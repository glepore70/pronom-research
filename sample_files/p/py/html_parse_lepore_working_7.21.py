import urllib.request as url
import urllib.parse
from bs4 import BeautifulSoup
from Entry import Entry
import codecs
import requests
import pdftables_api
import re

log = False

### TO RUN
### python3 init.py http://www.mdtiming.com/2018/HEroBoy2081-Results.TXT test

### SUGGESTIONS FOR FIXES AND IMPROVEMENTS ###

### FIX THE PRE AND TEXT SECTIONS TO REMOVE WRITING TO FILE AND READING BACK ###
### ALLOW READING FROM LOCAL TEXT FILE OF A SINGLE RESULT OR LIST OF URLS (BATCH MODE) ###
### COMBINE PRE AND TEXT PARSING AS THEY ARE BASICALLY THE SAME CODE TWICE ###
### IDENTIFY RESULTS WHICH HAVE AWARDS IN SAME RESULT SET TO IGNORE AWARDS SECTION ###
### ADD ERROR DETECTION AND REPORTING ###
### SET MINIMUM LENGTH TO ALL PARSING (THIS WILL AVOID TRYING TO PARSE RANDOM PRE AND TABLE SECTIONS) ###


def main(pages, race):
    entries = []
    race_type = ""
    keep_header = ""
    for page in pages:
        if 'pdf' in str(page) or 'PDF' in str(page):
            print ("FOUND PDF RESULTS, DOWNLOADING FILE")
            pdf_results = []
            
            #https://pdftables.com/api?key=8wsgwbxr1upf&format=csv ### my key to pdftables. I bought 500 page conversions, over 400 pages are left.
            #curl https://pdftables.com/api/remaining?key=8wsgwbxr1upf&format=csv ### to check remaining balance.
            with urllib.request.urlopen(page) as response, open('temp_pdf.pdf', 'wb') as out_file:
                data = response.read() # a `bytes` object
                out_file.write(data)
            #############################################
            ###UNCOMMENT NEXT TWO LINES TO PROCESS PDF###
            #############################################
            #c = pdftables_api.Client('8wsgwbxr1upf')
            #c.csv('temp_pdf.pdf', 'output.csv')
            
            print ("CONVERTING FILE")
            with open('output.csv', encoding="utf-8", errors="ignore") as f:
                for line in f:
                    if keep_header == "":
                        if re.match(r"^Div.*$|^Place.*$",line): ### FIND HEADER
                            keep_header = line
                            pdf_results.append(keep_header.strip())
                            
                    if re.match(r"^\d+.*$",line):
                        if not re.match(r".*Management.*|.*Page.*of.*$",line): ### SKIP LINES WITH "RACE MANAGED BY..." AND "PAGE 1 OF 2"
                            pdf_results.append(line.strip())
            pdf_results = [[i] for i in pdf_results]        
            print (pdf_results)
            
            race_type = "pdf"
            break
            
        else:
            req = url.Request(page,  headers={'User-Agent': 'Mozilla/5.0'})
            result = url.urlopen(req).read()        
            read_url_as_text = result.decode(encoding="cp1252").splitlines()
            result_as_text = result.decode(encoding="cp1252")      
            soup = BeautifulSoup(result, 'html.parser')
            
        print ("ANALYZING " + str(pages))

        if race == "test":
            
            table = find_largest_table(soup)    ###FIND LARGEST TABLE ON PAGE
            table_bytes_length = len(str(table))###LENGTH OF LARGEST TABLE
            pre = find_largest_pre(soup)        ###FIND LARGEST PRE SECTION
            pre_bytes_length = len(str(pre))    ###LENGHT OF LARGEST PRE
            
            iframe = soup.find_all('iframe')    ###IF THERE'S AN IFRAME EMBEDDED, SEARCH FOR CHRONOTRACK LINK
            for iframe_results in iframe:
                if 'chronotrack' in str(iframe_results):
                    print ("CHRONOTRACK IFRAME FOUND")
                    
            if 'Chronotrack' in str(pages) or 'chronotrack' in str(pages):
                print ("FOUND CHRONOTRACK RESULTS")
                #PUSH TO CHRONOTRAK RESULTS PULLER
                race_type = "chronotrack_type"
                
            elif 'Athlinks' in str(pages) or 'athlinks' in str(pages):
                print ("FOUND ATHLINKS RESULTS")
                #PUSH TO ATHLINKS RESULTS PULLER                
                race_type = "athlinks_type"
                
            elif 'Sporthive' in str(pages) or 'sporthive' in str(pages):
                print ("FOUND SPORTHIVE RESULTS")
                #PUSH TO SPORTHIVE RESULTS PULLER                
                race_type = "sporthive_type"  
                                
            
            #IF THE LARGEST TABLE ON THE PAGE IS LARGER THAN THE PRE SECTION (OR THERE IS NO PRE SECTION)
                print ("FOUND TABLE AND PRE TAGS, TABLE RESULTS ARE LARGER")

                rows = table.find_all("tr")
                table_contents = []   # store your table here
                for each_row in rows:
                    row_cells = ([ each_row.find('th').getText() ] if each_row.find('th') else [] ) + [ td.getText().strip() for td in each_row.find_all('td') if td.getText().strip() != '' ] 
                    if len(row_cells) > 1 : 
                        table_contents += [ row_cells ]
                        
                print (table_contents)
                race_type = "table_type"
                print ("END TABLE RESULTS")
                

            #IF THE PRE SECTION IS LARGER THAN ANY TABLE ON THE PAGE (OR NO TABLE)
            elif pre and pre_bytes_length > table_bytes_length:
                print ("FOUND PRE RESULTS")

                pre_as_str = pre.get_text().strip()
               
                f= codecs.open("pre_temp.txt","w+", "ISO-8859-1")
                f.write(pre_as_str)
                f.close
                
                cut_line =  get_line_number("Place","pre_temp.txt")
                #print (str(cut_line))
                if cut_line != None:
                    print ("Cutting first " + str(cut_line) + " lines.")
                    cut_line = cut_line - 1
                
                results = '\n'.join(pre_as_str.split('\n')[cut_line:])
                pre_decoded =  results.splitlines()
                def detect_column_indexes( list_of_lines ):
                    indexes=[0]
                    transitions= [col.count(' ')==len(list_of_lines) for col in zip(*list_of_lines)]
                    last=False
                    for i, x in enumerate(transitions):
                        if not x and last:
                            indexes.append(i)
                        last=x
                    indexes.append( len(list_of_lines[0])+1 )
                    return indexes

                def split_line_by_indexes( indexes, line ):
                    tokens=[]
                    for i1,i2 in zip(indexes[:-1], indexes[1:]): #pairs
                        tokens.append( line[i1:i2].rstrip() )
                    return tokens

                indexes= detect_column_indexes( pre_decoded )
                parsed= [split_line_by_indexes(indexes, line) for line in pre_decoded] 
                parsed = [[x.strip() for x in y] for y in parsed]
                print (parsed)
                print ("END PRE RESULTS")
                race_type = "pre_type"
             
            #IF THE RESULTS ARE IN TEXT FILE FORMAT (MDTIMING.COM) 
            elif '.txt' in str(pages) or '.TXT' in str(pages):
                print ("FOUND TXT RESULTS") 
                
                pre_as_str = result_as_text.strip()
               
                f= codecs.open("text_temp.txt","w+", "utf-8")
                f.write(pre_as_str)
                f.close
                
                cut_line =  get_line_number("Place","text_temp.txt")
                print ("Cutting first " + str(cut_line) + " lines.")
                cut_line = cut_line - 1
                results = '\n'.join(pre_as_str.split('\n')[cut_line:])
                pre_decoded =  results.splitlines()
                def detect_column_indexes( list_of_lines ):
                    indexes=[0]
                    transitions= [col.count(' ')==len(list_of_lines) for col in zip(*list_of_lines)]
                    last=False
                    for i, x in enumerate(transitions):
                        if not x and last:
                            indexes.append(i)
                        last=x
                    indexes.append( len(list_of_lines[0])+1 )
                    return indexes

                def split_line_by_indexes( indexes, line ):
                    tokens=[]
                    for i1,i2 in zip(indexes[:-1], indexes[1:]): #pairs
                        tokens.append( line[i1:i2].rstrip() )
                    return tokens

                indexes= detect_column_indexes( pre_decoded )
                parsed= [split_line_by_indexes(indexes, line) for line in pre_decoded] 
                #print ("#####OUTPUT####")
                parsed = [[x.strip() for x in y] for y in parsed]
                print (parsed)
                print ("END TXT RESULTS")
                race_type = "txt_type"
                
            else:
                print ("Could not locate any results on this page")
                                
        if log:
            for entry in entries:
                print(entry)
                
def find_largest_table(soup):
    largest = None
    largest_size = 0
    for table in soup.find_all('table'):
        table_size = len(str(table))
        if table_size >= largest_size:
            largest = table
            largest_size = table_size
    return largest

def find_largest_pre(soup):
    largest = None
    largest_size = 0
    for pre in soup.find_all('pre'):
        pre_size = len(str(pre))
        if pre_size >= largest_size:
            largest = pre
            largest_size = pre_size
    return largest

def get_line_number(phrase, file_name):
    with open(file_name, encoding="utf-8", errors="ignore") as g:
        #print ("opening " + file_name)
        for j, line2 in enumerate(g, 1):
            #print ("here2")
            if phrase in line2:
                #print ("here3")
                return j

#########TEST URLS##############
####PRE TAGS   https://www.mcrrc.org/race-results/2018/06/mcrrc-suds-soles-5k/    ##########
####PLAIN TEXT http://www.mdtiming.com/2018/LadyBay2018-Results.TXT    #############
####TABLE      http://www.brrc.com/gunpowder-keg-ultra-trail-races-7     #####


### RESULTS WITH ISSUES ###
### https://www.mcrrc.org/race-results/2018/06/run-for-roses-5k-3/ Awards in same PRE tag throws off column parser ###
### http://www.mdtiming.com/2018/Resser2018-Results.TXT encoding issue? ###
### https://www.mcrrc.org/race-results/2018/04/lions-roar-kate-truax-5k-3/ encoding issue ###
### http://www.mdtiming.com/2018/MArksRun2018-Results.TXT encoding issue ###
### http://www.brrc.com/gps-cross-country-1 ?? ###


#BRRC RESULTS

#http://www.brrc.com/meet-miles-13
#http://www.brrc.com/fathers-day-5k
#http://www.brrc.com/gunpowder-trail-race-14
#http://www.brrc.com/womens-distance-festival-12
#http://www.brrc.com/freeland-15k-1
#http://www.brrc.com/prettyboy-trail-race-12
#http://www.brrc.com/gunpowder-keg-ultra-trail-races-7
#http://www.brrc.com/baltimores-st-patricks-day-5k-0
#http://www.brrc.com/cupids-crush-2
#http://www.brrc.com/super-bowl-trail-race-6
#http://www.brrc.com/loch-raven-8-miler-0
#http://www.brrc.com/frozen-finger-5-miler-4
#http://www.brrc.com/masters-5k-and-social-0
#http://www.brrc.com/ncr-trail-marathon-relay-1
#http://www.brrc.com/ncr-trail-half-marathon
#http://www.brrc.com/little-gunpowder-trail-race-0
#http://www.brrc.com/gps-cross-country-1
#http://www.brrc.com/night-moves-trail-race-0

#MCRRC RESULTS

#https://www.mcrrc.org/race-results/2018/06/mcrrc-suds-soles-5k/
#https://www.mcrrc.org/race-results/2018/06/run-for-roses-5k-3/
#https://www.mcrrc.org/race-results/2018/05/jeremys-run-5k-10/
#https://www.mcrrc.org/race-results/2018/05/jeremys-run-10k-8/
#https://www.mcrrc.org/race-results/2018/05/memorial-day-4-mile-4/
#https://www.mcrrc.org/race-results/2018/05/defeat-dipg-superhero-6k-2/
#https://www.mcrrc.org/race-results/2018/05/germantown-5-miler-9/
#https://www.mcrrc.org/race-results/2018/05/hope-for-henry-5k/
#https://www.mcrrc.org/race-results/2018/05/run-aware-5k-xc/
#https://www.mcrrc.org/race-results/2018/05/wood-acres-jogfest-5k-5/
#https://www.mcrrc.org/race-results/2018/05/la-milla-de-mayo-1-mile/
#https://www.mcrrc.org/race-results/2018/05/bulldog-5k-7/
#https://www.mcrrc.org/race-results/2018/04/pikes-peek-10k-13/
#https://www.mcrrc.org/race-results/2018/04/lions-roar-kate-truax-5k-3/
#https://www.mcrrc.org/race-results/2018/04/azalea-classic-5k-9/
#https://www.mcrrc.org/race-results/2018/04/capital-for-a-day-5k-3/
#https://www.mcrrc.org/race-results/2018/04/trojan-family-breakfast-5k/
#https://www.mcrrc.org/race-results/2018/04/spirit-5k/
#https://www.mcrrc.org/race-results/2018/04/clarksburg-5k-11/
#https://www.mcrrc.org/race-results/2018/04/spin-in-the-woods-4m-xc/
#https://www.mcrrc.org/race-results/2018/03/piece-of-cake-5k-2018/
#https://www.mcrrc.org/race-results/2018/03/piece-of-cake-10k-2018/
#https://www.mcrrc.org/race-results/2018/02/kemp-mill-chills-10k/
#https://www.mcrrc.org/race-results/2018/02/kemp-mill-chills-5k/
#https://www.mcrrc.org/race-results/2018/01/country-road-5-miler/

#MDTIMING.COM RESULTS

#http://www.mdtiming.com/2018/BRRC-FF2018results.TXT
#http://www.mdtiming.com/2018/BRRC-8miler2018results.TXT
#http://www.mdtiming.com/2018/AS-Valentine2018Results.TXT
#http://www.mdtiming.com/2018/BRRC-CCawl2018-Results.TXT
#http://www.mdtiming.com/2018/OCShamrock2018-Results.TXT
#http://www.mdtiming.com/2018/Bolt2018-Results.TXT 
#http://www.mdtiming.com/2018/Resser2018-Results.TXT
#http://www.mdtiming.com/2018/Oldfield2018-results.TXT
#http://www.mdtiming.com/2018/WestMSM2018-REsults.TXT
#http://www.mdtiming.com/2018/LadyBay2018-Results.TXT
#http://www.mdtiming.com/2018/Fodd2018-Results.TXT
#http://www.mdtiming.com/2018/ThunderSpr2018-Results.TXT 
#http://www.mdtiming.com/2018/Belvoir2018-Results.TXT
#http://www.mdtiming.com/2018/Ship2018-Mile-Results.TXT
#http://www.mdtiming.com/2018/BRRC-WDF2018-Results.TXT
#http://www.mdtiming.com/2018/Chana2018-10k-Results.TXT
#http://www.mdtiming.com/2018/Chana2018-Walk-Results.TXT
#http://www.mdtiming.com/2018/HEroBoy2081-Results.TXT
#http://www.mdtiming.com/2018/ChambPov2018-Results.TXT
#http://www.mdtiming.com/2018/MArksRun2018-Results.TXT
#http://www.mdtiming.com/2018/SumSol2018-results.TXT

#HCS STRIDERS RESULTS
#http://www.striders.net/wp-content/uploads/2018/06/2018.wdf5k.results.overall.pdf
#http://www.striders.net/wp-content/uploads/2018/06/Centennial_Mile1_Results_06-19-18.pdf
#http://www.striders.net/wp-content/uploads/2016/07/2018-spring-hops-results.pdf




