import os
import pygame
import pygame.image
from pygame.locals import *
import random
pygame.init()
screen = pygame.display.set_mode((800,600), HWSURFACE|DOUBLEBUF)
backgroundimg = pygame.image.load("background.png").convert()
screen.blit(backgroundimg, (0,0))
global start_time, start_strength
start_strength = 0
start_intelligence = 0
start_demeanor=0
start_time = 0
start_mat = 0
start_comp = 0
start_dev = 0
total_strength = 0
total_intelligence = 0
total_demeanor=0
total_comp = 100
total_mat = 100
total_dev = 100
play_area_x = 583
play_area_y = 143
card_width = 100
card_height = 140
deal_area_y = 398
#print "29"

def load_png(name):
    fullname = os.path.join('', name)
    try:
        image = pygame.image.load(name)
	if image.get_alpha is None:
		print "no alpha"
		image = image.convert()
	else:
		image = image.convert_alpha()
    except pygame.error, message:
        print 'Cannot load image:', name
        raise SystemExit, message
    return image, image.get_rect()
    
class Card(pygame.sprite.Sprite):
    def __init__(self, initial_position, imgname, strength, intelligence, demeanor, habitat, name, comp, material, dev, moved):

        pygame.sprite.Sprite.__init__(self)
        self.image, self.rect = load_png(imgname)
        self.rect.topleft = initial_position
        self.strength = strength 
        self.intelligence = intelligence
	self.demeanor=demeanor
        self.habitat = habitat
        self.name = name
        self.comp = comp
        self.mat = material
        self.dev = dev
        self.moved = moved


def counters():
	global boxes1, boxes2, boxes3, boxes4, boxes5
	boxes1 = pygame.sprite.RenderUpdates()
	slider_strength= boxes1.add(card1([255, 0, 0], [40, 235]))
	boxes2 = pygame.sprite.RenderUpdates()
	slider_intelligence= boxes2.add(card2([255, 0, 0], [112, 235]))
	boxes3 = pygame.sprite.RenderUpdates()
	slider_habitat= boxes3.add(card3([255, 0, 0], [185, 235]))
	boxes4 = pygame.sprite.RenderUpdates()
	slider_demeanor= boxes4.add(card4([255, 0, 0], [259, 235]))
	
	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 14)
	text = font.render("50", 1, (155,155,155)) #prints days left on screen
	screen.blit(text, (70, 90))
	global default_strength_height, default_intelligence_height, default_demeanor_height, default_comp_height, default_mat_height, default_dev_height
	default_comp_height=600
	default_mat_height=600
	default_dev_height=600
	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 24)
	text = font.render("Proteus", 1, (155,155,155))
	screen.blit(text, (425, 0))
	pygame.display.flip()

def add(card1_strength, card2_strength, card3_strength, card4_strength, card1_intelligence, card2_intelligence, card3_intelligence, card4_intelligence, card1_demeanor, card2_demeanor, card3_demeanor, card4_demeanor, card1_moved, card2_moved, card3_moved, card4_moved, card1_name, card2_name, card3_name, card4_name, card1_comp, card2_comp, card3_comp, card4_comp, card1_mat, card2_mat, card3_mat, card4_mat, card1_dev, card2_dev, card3_dev, card4_dev):
	
	global total_strength, total_intelligence, total_demeanor, total_comp, total_dev, total_mat
	
	if (card1_moved == 1):
		total_strength = total_strength + start_strength + card1_strength
		total_intelligence = total_intelligence + start_intelligence + card1_intelligence
		total_demeanor = total_demeanor + start_demeanor + card1_demeanor
		total_comp = total_comp + start_comp + card1_comp
		total_mat = total_mat + start_mat + card1_mat
		total_dev = total_dev + start_dev + card1_dev
	if (card2_moved == 1):
		total_strength = total_strength + start_strength + card2_strength
		total_intelligence = total_intelligence + start_intelligence + card2_intelligence
		total_demeanor = total_demeanor + start_demeanor + card2_demeanor
		total_comp = total_comp + start_comp + card2_comp
		total_mat = total_mat + start_mat + card2_mat
		total_dev = total_dev + start_dev + card2_dev
	if (card3_moved == 1):
		total_strength = total_strength + start_strength + card3_strength
		total_intelligence = total_intelligence + start_intelligence + card3_intelligence
		total_demeanor = total_demeanor + start_demeanor + card3_demeanor
		total_comp = total_comp + start_comp + card3_comp
		total_mat = total_mat + start_mat + card3_mat
		total_dev = total_dev + start_dev + card3_dev
	if (card4_moved == 1):
		total_strength = total_strength + start_strength + card4_strength
		total_intelligence = total_intelligence + start_intelligence + card4_intelligence
		total_demeanor = total_demeanor + start_demeanor + card4_demeanor
		total_comp = total_comp + start_comp + card4_comp
		total_mat = total_mat + start_mat + card4_mat
		total_dev = total_dev + start_dev + card4_dev

	moves_leftstr=str(int(moves_left))	
	total_intelligencestr=str(int(total_intelligence))
	total_demeanorstr=str(int(total_demeanor))
	total_strengthstr=str(int(total_strength))
	total_compstr=str(int(total_comp))
	total_matstr=str(int(total_mat))
	total_devstr=str(int(total_dev))
	
	screen.fill ((0,0,0,), (70, 90, 20, 15))#clear moves area
	screen.fill ((0,0,0), (45, 362, 25, 20))#clear strength area
	screen.fill ((0,0,0), (115, 362, 20, 20))#clear intelligence area
	screen.fill ((0,0,0), (265, 362, 20, 20))#clear demeanor area
	screen.fill ((0,0,0), (755,400, 25, 20))#clear comp area
	screen.fill ((0,0,0), (755, 440, 25, 20))#clear mat area
	screen.fill ((0,0,0), (755, 480, 25, 20))#clear dev area
	
	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 14)
	text = font.render(moves_leftstr, 1, (155,155,155))
	screen.blit(text, (70, 90))
	font = pygame.font.Font("/usr/share/fonts/ttf/western/a_d_mono.ttf", 18)
	text = font.render(total_strengthstr, 1, (155,155,155))
 	screen.blit(text, (45, 362))
	text = font.render(total_intelligencestr, 1, (155,155,155))
	screen.blit(text, (115, 362))
	text = font.render(total_demeanorstr, 1, (155,155,155))
	screen.blit(text, (265, 362))
	text = font.render(total_compstr, 1, (155,155,155))
	screen.blit(text, (755,400))
	text = font.render(total_matstr, 1, (155,155,155))
	screen.blit(text, (755,440))
	text = font.render(total_devstr, 1, (155,155,155))
	screen.blit(text, (755,480))
	pygame.display.flip()	
	#print "made it to end of add"
def shuffledeal():

	global  card1, card2, card3, card4, card5, card6, card7, card8, sound_play, sound_deal, card1_dealt, card2_dealt, card3_dealt, card4_dealt, sound_play, sound_deal, sound_attack
	sound_play= pygame.mixer.Sound("play.wav")
	sound_deal= pygame.mixer.Sound("deal.wav")
	sound_attack=pygame.mixer.Sound("attack.wav")
	#sound_deal.play()
	
	screen.blit(screen, (0,0))
	card1 = Card((11,deal_area_y), 'bear.png', 10, -5, 10, 5, "hawk", -15,0,0, 0)
	card2 = Card((155,deal_area_y), 'deer.png', 10, 15, -20, 10, "tiger", 0, -15,0,0)
	card3 = Card((295,deal_area_y), 'elephant.png', -10, -10, -20, 15, "octopus", 0, 0, -10, 0)
	card4 = Card((438,deal_area_y), 'fox.png', 10, 10, -20, 20, "resource", 10, 10, 10, 0)
	card5 = Card((11,deal_area_y), 'gazelle.png', -10, -5, 10, 5, "hawk", -15,0,0, 0)
	card6 = Card((155,deal_area_y), 'gorilla.png', 10, 15, 20, 10, "tiger", 0, -15,0,0)
	card7 = Card((295,deal_area_y), 'greyhound.png', -10, 10, -20, 15, "octopus", 0, 0, -10, 0)
	card8 = Card((438,deal_area_y), 'shark.png', 10, 0, 5, 20, "resource", 10, 10, 10, 0)
	card9 = Card((11,deal_area_y), 'warthog.png', -10, -5, 10, 5, "hawk", -15,0,0, 0)
	card10 = Card((155,deal_area_y), 'wolf.png', 10, 15, -20, 10, "tiger", 0, -15,0,0)
	card11 = Card((295,deal_area_y), 'snakehead.png', -10, -10, -20, 15, "octopus", 0, 0, -10, 0)
	card12 = Card((438,deal_area_y), 'ostrich.png', 10, 10, -20, 20, "resource", 10, 10, 10, 0)
	card13 = Card((11,deal_area_y), 'python.png', -10, -5, 10, 5, "hawk", -15,0,0, 0)
	card14 = Card((155,deal_area_y), 'tiger.png', 10, 15, 20, 10, "tiger", 0, -15,0,0)
	card15 = Card((295,deal_area_y), 'coopershawk.png', -10, 10, -20, 15, "octopus", 0, 0, -10, 0)
	
	card_deck = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15]
	random.shuffle(card_deck)
	card1_dealt = card_deck[0]
	card2_dealt = card_deck[1]
	card3_dealt = card_deck[2]
	card4_dealt = card_deck[3]
	
	screen.blit(card1_dealt.image, card1.rect)
	screen.blit(card2_dealt.image, card2.rect)
	screen.blit(card3_dealt.image, card3.rect)
	screen.blit(card4_dealt.image, card4.rect)
	pygame.display.flip()
	#print "made it to end of shuffle"
	
class card1(pygame.sprite.Sprite):
	def __init__(self, color, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image = pygame.Surface([45, 7])
		self.image.fill(color)
		self.rect = self.image.get_rect()
		self.rect.topleft = initial_position

	def update(self, amt):
		self.rect.top += amt
					
def move_box1(amt):
	for b in boxes1:
			boxes1.update(amt)
   			rectlist = boxes1.draw(screen)
    			pygame.display.update(rectlist)
    			boxes1.clear(screen, backgroundimg)

class card2(pygame.sprite.Sprite):
	def __init__(self, color, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image = pygame.Surface([45, 7])
		self.image.fill(color)
		self.rect = self.image.get_rect()
		self.rect.topleft = initial_position

	def update(self, amt):
 		self.rect.top += amt
		
def move_box2(amt):
	for b in boxes2:
			boxes2.update(amt)
   			rectlist = boxes2.draw(screen)
    			pygame.display.update(rectlist)
    			boxes2.clear(screen, backgroundimg)
			
class card3(pygame.sprite.Sprite):
	def __init__(self, color, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image = pygame.Surface([45, 7])
		self.image.fill(color)
		self.rect = self.image.get_rect()
		self.rect.topleft = initial_position

	def update(self, amt):
		self.rect.top += amt
		
def move_box3(amt):
	for b in boxes3:
			boxes3.update(amt)
   			rectlist = boxes3.draw(screen)
    			pygame.display.update(rectlist)
    			boxes3.clear(screen, backgroundimg)
			
class card4(pygame.sprite.Sprite):
	def __init__(self, color, initial_position):
		pygame.sprite.Sprite.__init__(self)
		self.image = pygame.Surface([45, 7])
		self.image.fill(color)
		self.rect = self.image.get_rect()
		self.rect.topleft = initial_position

	def update(self, amt):
 		self.rect.top += amt
		
def move_box4(amt):
	for b in boxes4:
			boxes4.update(amt)
   			rectlist = boxes4.draw(screen)
    			pygame.display.update(rectlist)
    			boxes4.clear(screen, backgroundimg)	
def play():
	
	global moves_left
	moves_left = 50
#Ok, ESC not pressed, check for keys...
	while 1:
		pygame.event.pump()
		keyinput = pygame.key.get_pressed()
		#event = pygame.event.get([KEYDOWN])
		if keyinput[K_ESCAPE] or pygame.event.peek(QUIT):
            		break
    		
		for event in pygame.event.get():
			if event.type is KEYDOWN and event.key == K_1: #play first card
                		card1_dealt.rect.topleft = (play_area_x,play_area_y)
				screen.fill ((0,0,0), (8,deal_area_y, card_width, card_height))
				screen.blit(card1_dealt.image, card1_dealt.rect.topleft)
				card1_dealt.moved = 1
				moves_left = moves_left -1
				move_box1(card1_dealt.strength)
				move_box2(card1_dealt.intelligence)
				move_box3(card1_dealt.habitat)
				move_box4(card1_dealt.demeanor)
		#sound_play.play()
	#print "this far"	
			if event.type is KEYDOWN and event.key == K_2:#play second card
				card2_dealt.rect.topleft = (play_area_x,play_area_y)
				screen.fill ((0,0,0), (152,deal_area_y, card_width, card_height))
				screen.blit(card2_dealt.image, card2_dealt.rect)
				card2_dealt.moved = 1
				moves_left = moves_left -1
				move_box1(card2_dealt.strength)
				move_box2(card2_dealt.intelligence)
				move_box3(card2_dealt.habitat)
				move_box4(card2_dealt.demeanor)
	 	#sound_play.play()
		
			if event.type is KEYDOWN and event.key == K_3:#play third card
				card3_dealt.rect.topleft = (play_area_x,play_area_y)
				screen.fill ((0,0,0), (292,deal_area_y, card_width, card_height))
				screen.blit(card3_dealt.image, card3_dealt.rect)	
				card3_dealt.moved = 1
				moves_left = moves_left -1
				move_box1(card3_dealt.strength)
				move_box2(card3_dealt.intelligence)
				move_box3(card3_dealt.habitat)
				move_box4(card3_dealt.demeanor)
	 	#sound_play.play()
	
			if event.type is KEYDOWN and event.key == K_4:#play fourth card
				card4_dealt.rect.topleft = (play_area_x,play_area_y)
				screen.fill ((0,0,0), (435,deal_area_y, card_width, card_height))
				screen.blit(card4_dealt.image, card4_dealt.rect)
				card4_dealt.moved = 1
				moves_left = moves_left -1
				move_box1(card4_dealt.strength)
				move_box2(card4_dealt.intelligence)
				move_box3(card4_dealt.habitat)
				move_box4(card4_dealt.demeanor)
	 	#sound_play.play()
	
			if event.type is KEYDOWN and event.key == K_0:#0 resets any move made
				screen.fill ((0,0,0), (play_area_x,play_area_y, card_width, card_height))
				screen.fill ((0,0,0), (8,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (152,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (292,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (435,deal_area_y, card_width, card_height))
				shuffledeal()
				card1.moved = 0
				card2.moved = 0
				card3.moved = 0
				card4.moved = 0
				pygame.display.flip()
		
			if event.type is KEYDOWN and event.key == K_6: #6 monsters attack!
				add (card1_dealt.strength, card2_dealt.strength, card3_dealt.strength, card4_dealt.strength, card1_dealt.intelligence, card2_dealt.intelligence, card3_dealt.intelligence, card4_dealt.intelligence, card1_dealt.demeanor, card2_dealt.demeanor, card3_dealt.demeanor, card4_dealt.demeanor, card1_dealt.moved, card2_dealt.moved, card3_dealt.moved, card4_dealt.moved, card1_dealt.name, card2_dealt.name, card3_dealt.name, card4_dealt.name, card1_dealt.comp, card2_dealt.comp, card3_dealt.comp, card4_dealt.comp, card1_dealt.mat, card2_dealt.mat, card3_dealt.mat, card4_dealt.mat, card1_dealt.dev, card2_dealt.dev, card3_dealt.dev, card4_dealt.dev)
				#sound_attack.play()
				screen.fill ((0,0,0), (8,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (152,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (292,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (435,deal_area_y, card_width, card_height))
				screen.fill ((0,0,0), (play_area_x,play_area_y, card_width,card_height))
				shuffledeal()
				
				card1.moved = 0
				card2.moved = 0
				card3.moved = 0
				card4.moved = 0
			screen.blit(screen, (0,0))
			pygame.display.flip() 
			move_box1(0)
			move_box2(0)
 			move_box3(0)
			move_box4(0)
# 	pygame.display.update()

def main():
	pygame.init()
	counters()
	shuffledeal()
	play()
	pygame.mixer.init()	
if __name__ == '__main__':
    
    main()