Excerpt from below documentation:


==============================================================================
How do I use DIGPAK drivers?
==============================================================================
The DIGPAK drivers all have the filename extension of .COM.  Starting at
byte offset 3 from the beginning of the file is the ascii string
'DIGPAK'.  The default DIGPAK driver should always be copied to the
filename SOUNDRV.COM.  DIGPAK drivers hook user interrupt vector 66h,
which is documented briefly in the book 'PC Interrupts: A Programmer's
Reference To BIOS, DOS, and Third-Party Calls' by Ralf Brown and Jim
Kyle, published by Addison Wesley.

You configure a DIGPAK driver by running the program SETD.EXE.

The complete API documentation for DIGPAK is in the file DIGPKAPI.DOC.
The C link layer for DIGPAK is through the C prototype header file
DIGPLAY.H and by linking to the object module DIGPLAY.OBJ produced
from DIGPLAY.ASM.

A DIGPAK driver can be loaded as a TSR simply by typing it's name.
You can load the default sound driver, as a TSR, by typing 'SOUNDRV'
and hitting enter.  You can unload that driver by typing 'SOUNDRV U'.
The preferred method of using a DIGPAK driver is to demand load it
in your program.  This is done by including the header file LOADER.H
in your program and linking to LOADER.C.

Simply look at the sample program TEST.C which fully demonstrates
loading both DIGPAK and MIDPAK and plays both music and sound effects.

http://ftp.lanet.lv/ftp/mirror/x2ftp/msdos/programming/mxlibs/00index.html

FULL DOCUMENTATION:


   Documentation for the DIGPAK & MIDPAK Developers Kit v1.50



			    by

		      John W. Ratcliff
		   Compuserve: 70253,3237
		      Genie: J.RACLIFF3
		     BBS: 1-314-939-0200, 14.4kb

		     TO GET THE DEVELOPERS KIT CALL
		     THIS BBS NUMBER AT UP TO 14.4KB

		     DIGPAK & MIDPAK DEVELOPERS KIT
		     EXISTS IN THE MAIN LIBRARY AS:

			 DMKIT.ZIP


		     Document first draft: January 3, 1994

			      second release: March 8, 1994

			      third release: March 25, 1994
					     fixes to SB16.COM
					     and first release
					     AWE32 driver.

			      fourth release: April 19, 1994
					      BETA VESA release.

			      fifth release:  January 1, 1995
				    DIGAUTO, auto-detect DIGPAk
				    TMIX - The new digital mixer!
				    RECORD - audio recording tool
				    PEND - now has volume control too!

			      sixth release: January 13, 1995
				    Flat model TMIX now supports
				    MOD files!!!!

			      seventh release: January 16, 1995
				   Added protected mode GUS
				   support.


IMPORTANT NEW FILES FOR BETA VESA RELEASE:


PASWAVE  COM	     6,825  ProAudio Spectrum VESA Driver
SBWAVE	 COM	     7,091  Creative Labs SoundBlaster VESA Driver
OPL2	 COM	     6,567  OPL2 VESA MIDI driver (early beta, music
			    implementation very incomplete.)
MPU	 COM	     4,656  MPU401 VESA MIDI Driver.

DIGVESA  COM	     5,792  DIGPAK VESA Driver
VESADIG  ADV	     6,288  AIL VESA Digital Driver
VESAMID  ADV	    12,352  MIDPAK & AIL VESA MIDI Driver
VESAMID  ADD		    MIDPAK MIDI Descriptor file.

You must load the VESA drivers in your autoexec.bat, or whatever
prior to using the DIGPAK & MIDPAK VESA drivers which talk to that
beta VESA interface.

IMPORTANT NEW FILES FOR v1.5 DMKIT RELEASE:

PEND.EXE	Now let's you modulate volume on the fly.

RECORD.EXE      Records audio and writes it to disk in real-time.

DIGAUTO.COM     This is an auto-detect DIGPAK driver.  It fully autodetects
		the 5 most popular sound cards.  It can only be used
		as a TSR, not as a demand loadable driver.

TMIX.EXE        The 4 channel digpak digital mixer.  Way cool.

MIX1-8.SND      These are test sound effects for the DIGPAK digital
		mixer.	These sound effects are owned by John W. Ratcliff
		and you do not have usage right to these sound effects
		in any fashion.  These sound effects are copyright (c) 1995
		John W. Ratcliff

TUNE.MOD        Demonstration MOD file, for the protected mode MOD player.

ORPHAN.ZIP	This zip file contains timer based, and other DIGPAK drivers
		for sound cards which now appear to be effectively obsolete
		in the market place.  Not all of these drivers have been
		kept up with more recent revs of DIGPAK, and shouldn't
		be relied upon, without thorough testing for your
		application.  Few, if any, will work in protected mode.




		     Copyright (c) 1994, 1995
		     The Audio Solution
		     747 Napa Lane
		     St. Charles, MO 63304



		DIGPAK : DOS based digital sound drivers.
			 Written by John W. Ratcliff (CIS:70253,3237)
			 Copyright (c) 1994, The Audio Solution.
			 $500 per/product distribution license fee.

		MIDPAK:  DOS based MIDI music player.
			 Written by John W. Ratcliff and John Miles
			 Copyright (c) 1994, The Audio Solution.
			 $500 per/product distribution license fee.


==============================================================================
What is DIGPAK and MIDPAK?
========================================================================
DIGPAK and MIDPAK are a set of drivers which provide a device
independent API layer under DOS real-mode and protected mode that
supports virtually all sound cards.  DIGPAK allows playback of digital
sound and MIDPAK allows the playback of General MIDI music on ALL sound
cards (including Adlib, SoundBlaster, and other non-MIDI devices through
the best MIDI emulation package available.)  DIGPAK and MIDPAK
operate either as DOS TSR's or can be demand loaded and dynamically linked
by your application.  (The preferred method).

Unzip this file, with sub-directories, into a directory called THEAUDIO
and point your PATH statement to the directory.  Once you have done this
you can go to any directory on your machine containing MIDI files or
sound files and type MENU to use MIDPAK and DIGPAK to peruse them.

DIGPAK & MIDPAK are for use by professional DOS developers who need to
incorporate sound and music in their products across a wide range of
hardware devices.  These tools are not for the layperson, or beginning
programmer.  All programming examples and interface specifications are
presented in the C and 8086/80386 assembly languages.  If you are not
familiar with digital sound, MIDI music, and C and assembly language
programming then this programmers kit is probably not for you.

This kit supports both DOS real-mode as well as DOS protected mode
interface layers.  All assembly language source code must be assembled
with Borland Assembler (in IDEAL mode) and the C code may be compiled
with any C compiler.  The real-mode C code presented here was developed
with Borland C 3.1 DOS IDE and the flat-model C code was generated under
Watcom C386 v9.0.

==============================================================================
Who developed DIGPAK & MIDPAK?
========================================================================
DIGPAK and MIDPAK were developed by John W. Ratcliff, a game developer
for Electronic Arts.  These drivers were created to allow me to
incorporte sound and music in my game Seawolf for Electronic Arts.
MIDPAK uses the MIDI drivers developed by John Miles of Miles Design.

==============================================================================
What's the quickest way to look at the software?
==============================================================================
Run SETUP to configure both DIGPAK and MIDPAK for your sound card.  Then
type MENU to play some music and sound.  After running SETUP you can
also run TEST, TEST16, or SEGUE, to run the demo programs.

==============================================================================
Who uses DIGPAK & MIDPAK?
========================================================================
The list which follows are just some of the companies which use the
DIGPAK and MIDPAK drivers in their DOS based entertainment products.

 Electronic Arts		     Epyx
 Activision			     Fun Univ Netwk
 Spectrum Holobyte		     Home Brew Software
 The Software Toolworks 	     Humongous Entertainment
 SSI, Strategic Simulations Inc.     ICOM Simulations
 Milliken Publishing Company	     Interplay
 Commodore Computer		     IntraCorp
 Virgin Games			     Kram
 Compu-Teach			     Legacy Software
 Knowledge Adventure		     Macmillan/McGraw Hill
 Gametek			     Magnetic Images
 Access Software		     MECC
 Alive Software 		     Merit Software
 Azeroth Publishing		     Microleage Sports Assoc.
 Bethesda Softworks		     Ninga
 C.R.A.P.O., Inc.		     Norsehelm Productions
 Concepteva			     Objects, Inc
 Cooper, R.J. & Assoc.		     Optimum Resource
 DC True			     Presage Software Co. Inc.
 Dennis Cunningham		     Quantum Quality Productions
 Three-Sixty Pacific		     Redwood Games
 Destiny Software		     Saddleback Graphics
 Edmark Corpoartion		     Safari Software
 Simutronics			     White Wolf Productions, Inc.
 Stragem			     XOR Corporation
 T&t Research			     Trilobyte
 Waterford Institute		     Masque Publishing
 Wesson International		     Iterated Systems

		and many more...


==============================================================================
What products use DIGPAK & MIDPAK?
========================================================================
Below is just a very PARTIAL list of the product that use DIGPAK & MIDPAK
drivers.

Guardians of Eden	Access Software 		MidPak
Return to Zork		Activision			DigPak
Mechwarrior II		Activision			DigPak
Animal Quest		Alive Software			DigPak+MidPak
Magic Crayon		Alive Software			DigPak+MidPak
VGA Jigsaw		Alive Software			DigPak+MidPak
Inspector Gadget:	Azeroth Publishing		DigPak+MidPak
Terminator 2029 	Bethesda Softworks		DigPak
Le Ponctueur		C.R.A.P.O., Inc.		DigPak
Bilou			Concepteva			DigPak
Switch Progressions	Cooper, R.J. & Assoc.		DigPak+MidPak
Switch Quik		Cooper, R.J. & Assoc.		DigPak+MidPak
Stepping Stones Bonus	Compu-Teach, Inc.		DigPak+MidPak
Shadow President	DC True 			DigPak
T-Zero			Dennis Cunningham		DigPak+MidPak
Battle Cruiser 3000AD	Three-Sixty Pacific		DigPak
Creepers		Destiny Software		DigPak+MidPak
Millie's Math House     Edmark Corpoartion              DigPak
KidDesk 		Edmark Corporation		DigPak
Fun Univ Ntwk Intfc	Fun Univ Netwk			DigPak+MidPak
Wheel of Fortune	Gametek 			DigPak+MidPak
Gateworld Trilogy	Home Brew Software		MidPak
PuttPutt's FunPack      Humongous Entertainment         DigPak+MidPak
PuttPutt Joins Parade	Humongous Entertainment 	DigPak+MidPak
Fatty Bear		Humongous Entertainment 	DigPak+MidPak
PuttPutt Goes to the Moon Humongous Entertainment	DigPak+MidPak
Beyond Shadowgate	ICOM Simulations		DigPak+MidPak
Battle Chess 4000	Interplay			DigPak
Grandmaster Chess	IntraCorp			DigPak+MidPak
Space Adventure 	Knowledge Adventure		DigPak
Dinosaur Adventure	Knowledge Adventure		DigPak
Realms of Avarton	Kram				DigPak
Mutanoid Math Challenge Legacy Software 		DigPak+MidPak
Mutanoid Word Challenge Legacy Software 		DigPak+MidPak
Sights & Sounds 	Macmillan/McGraw Hill		DigPak
Places to Play		Magnetic Images 		DigPak
Oregon Trail Deluxe	MECC				DigPak+MidPak
Tom Landry Football	Merit Software			DigPak+MidPak
MicroLeague Baseball IV Microleague Sports Assoc.	DigPak+MidPak
MicroLeague Football II Microleauge Sports Assoc.	DigPak+MidPak
Microleage Cards	Microleage Sports Assoc.	DigPak
Math Zone		Milliken Publishing		DigPak
Marvin The Moose	Milliken Publishing		DigPak
Milliken Storyteller	Milliken Publishing		DigPak
Math Sequences		Milliken Publishing		DigPak
Cribbage Master 	Ninga				DigPak
Ragarok (Valhalla)	Norsehelm Productions		DigPak
Layout for DOS		Objects, Inc			DigPak+MidPak
Stickybear Townbuilder	Optimum Resource		DigPak
Contraption ZAck	Presage Software Co. Inc.	DigPak+MidPak
Spaceward Ho PC 	Presage Software Co. Inc.	DigPak+MidPak
Solitaire's Journey     Quantum Quality Productions     DigPak+MidPak
Pickle Wars		Redwood Games			DigPak+MidPak
Guzzle Puzzles		Redwood Games			DigPak
My Paint		Saddleback Graphics		DigPak
Space Chase 1,2,3	Safari Software 		MidPak
GemStone III		Simutronics			DigPak+MidPak
Cyberstrike		Simutronics			DigPak+MidPak
WorldAtlas		The Software Toolworks		DigPak+MidPak
Chessmaster 3000	The Software Toolworks		DigPak
BodyLink		Stragem 			DigPak
Pools of Darkness	Strategic Simulations Inc.	DigPak
Gateway to the Savage	Strategic Simulations Inc.	DigPak
DNA Parrot		T&t Research			DigPak
Monopoly Deluxe 	Virgin Games			DigPak
Waterford Mental Math	Waterford Institute		DigPak+MidPak
ATC/Tracon		Wesson International		DigPak
Empire Deluxe		White Wolf Productions, Inc.	DigPak+MidPak
NFL Challenge		XOR Corporation 		DigPak
Chess Maniac 5,000,001	Spectrum Holobyte		DigPak+AIL
The 7th Guest		Virgin/Trilobyte		DigPak+AIL
Seawolf 		Electronic Arts 		DigPak+MidPak
KaleidoSonics		Masque Publishing		DigPak+MidPak
Gambit			Electronic Arts 		DigPak+MidPak
Warlords II		SSG				DigPak+MidPak

==============================================================================
What type of 'commercial products' does the license fee apply to?
============================================================================
Any piece of software which uses the DIGPAK & MIDPAK drivers for which
the developer collects a fee REQUIRES a license. Yes, this INCLUDES
shareware proudcts as well as those that sit on the shelf at a computer
store. This also includes distributable multimedia demos, for which the
multimedia authors were paid a fee to create.  If you are bidding on a
multimedia project and intend to use MIDPAK and DIGPAK, then be sure to
include the $1,000 license fee in your budget!

If you are making money because of the value that these drivers add to
your product, then we deserve a license.  There are several man-YEARS of
engineering work in these drivers, as well as continued expenses to
maintain them.	The license fee serves as little more than a
'maintenance' fee for us to keep the drivers up to date, as well as run
the BBS for people to get continued improvements and updates.

Do NOT use DIGPAK and MIDPAK if you are not prepared to pay the license
fee.  Every single one of the products and companies listed above have
paid this same license fee for the right to distribute the DIGPAK and
MIDPAK drivers.

==============================================================================
Can I get a DIGPAK and MIDPAK license for a development tool?
============================================================================
NO!!  The license for DIGPAK and MIDPAK is for multimedia,
entertainment, and educational products which need support for
interactive sound and music.  Development tools based on the DIGPAK and
MIDPAK drivers are NOT allowed!!  If you want to create a development
package that utilizes the DIGPAK and MIDPAK drivers then you must
contact me directly to discuss such an arrangment.  You are NOT allowed
to resell, DIGPAK and MIDPAK drivers under any conditions as a
developers toolkit. This includes any sort of multimedia authoring
toolkit.  The reason for this should be obvious. You would be in effect
re-distributing DIGPAK and MIDPAK drivers license free, to other
developers, and this is not allowed.  That's not to say we can't come to
an agreement, but you cannot obtain a license for any type of
developement or authoring system using DIGPAK and MIDPAK drivers.

==============================================================================
What do I do if I want to add sound and music support by don't want
to pay a license?
============================================================================
Call Mystic Software at 1-510-865-9189.  The Worx toolkit from Mystic
software does not require any license fee and is a very nice development
package.  Though it does not support as many sound cards as DIGPAK &
MIDPAK, it is a very servicable development tool.

==============================================================================
What if my shareware product has a free portion, and then a registered
portion?
============================================================================
Then no license fee applies for the FREE version.  If you are developing
public domain tools and utilities that support DIGPAK & MIDPAK, and they
are truely FREE, then no license fee applies.  If that public domain
tool is a development aid, tool, or authoring system, then the DIGPAK
and MIDPAK portion of that tool MUST contain this COMPLETE document and
make it extremely clear that the distribution license fee still applies
to anyone using that authoring tool.

==============================================================================
If I use both DIGPAK and MIDPAK in a product how much is the total
license then?
============================================================================
$500 for DIGPAK and $500 for MIDPAK, for a total of $1,000.  Even if you
sell 100,000 copies of the product, the license is still only $1,000.
Unfortunatly even if you sell just 100 copies, the fee applies as well.

==============================================================================
How do I pay my license?
==============================================================================
Write a check payable to The Audio Solution, and include with it a copy
or your product.  Mail the check to:

	The Audio Solution
	John W. Ratcliff
	747 Napa Lane
	St. Charles, MO 63304

Shortly thereafter you will receive a signed copy of the license agreement.
Once you have paid the license fee, the agreement is considered in effect
and you may distribute your product with the drivers.  You must, however,
pay the license fee PRIOR to your product being shipped.

DIGPAK & MIDPAK are copyrighted software components.  If you distribute
The Audio Solution drivers without having a signed license agreement you
will be in violation of our copyright.	Your product could be required to
be immediatly removed from retail distribution.  I don't think this is
going to be a problem.

If you don't think DIGPAK & MIDPAK add $1,000 of value to your product, then
do not use them, period.  Use the Worx Toolkit from Mystic, or write your
own sound code.  But DO NOT use these drivers unless you intend to pay the
license fee.

All DIGPAK drivers combined equal almost 20,000 lines of assembly code.
And the same is true for all of the MIDPAK drivers.  John Miles and myself
have invested over 4 years creating and maintaining these drivers.  We
are making this developers kit widely available to the developer community
as a service to the industry.  It is our goal to make these excellent
development tools available to everyone.  But we have bills to pay like anyone
else.  As a self-employed entrepenuer I do not get a paycheck,
health insurance, paid vacations, or any of the outher ammenities that
salaried employees have.  If people use these tools to enhance their product
and generate revenue, then I feel strongly that I should be paid a
license fee for these drivers.

==============================================================================
I'm a shareware author and I can't afford $1,000 until I get enough
registrations.	What do I do?
============================================================================
Send me a copy of your shareware product on my BBS along with a piece of
e-mail explaining your situation.  In most cases I will issue a SHAREWARE
LICENSE AGREEMENT that will require payment of the FULL license fee once
you have received 500 paid registrations for your product.  If you don't
receive 500 registrations, then you will not have to pay the license fee.
But once you have received 500 registrations you MUST pay the license fee.
As a shareware author I'm certain you understand not wanting to be ripped
off, and likewise I would expect you to pay your license for the DIGPAK
and MIDPAK drivers in good faith.  You must come to an agreement with me
prior to the release of your shareware package.

==============================================================================
I'm doing software development for the disabled.  Even though I have
to charge a fee for the software to cover expenses, we are a non-profit
organization.  Could I be exempted from the license fee?
=========================================================================
In general yes.  I would like to provide exemptions to anyone using
DIGPAK and MIDPAK to create software to help the disabled.  However, you
will still need to receive a signed license agreement with that
exemption. Please contact me ahead of time (via Compuserve or my BBS),
and let me know about what you are doing.  When your project is complete
you will receive a signed distribution license agreement, with the
exemption.  Simply send me a copy of your product and a check for $1 to
cover the license fee.	This DOES NOT include EDUCATIONAL SOFTWARE
created by any FOR PROFIT organization.

==============================================================================
What kind of digitized sound format does DIGPAK support?
==========================================================================
None.  DIGPAK is a low-level API layer.  It simply insulates the programmer
from having to talk DIRECTLY to the hardware.  The data you pass to DIGPAK
is the same data you would have been passing to the sound card itself.
DIGPAK requires raw 8 bit unsigned PCM data in the first 1mb of address
space in under 64k lengths.  Stereo 8 bit support is provided with
interleaved left channel/right channel 8 bit samples.  Support for
16 bit digital sound in DIGPAK is provided through raw 16 bit SIGNED
data.  Why signed?  Because every single 16 bit PC sound card I have
encountered supports 8 bit unsigned PCM and 16 bit signed PCM.	The
DIGPAK drivers, in almost every case, simply passes that chunk of
audio data out to the DMA controller.

Interpreting .WAV files, .VOC files, or .ANYTHING files is a higher application
level problem, one that you will have to provide support for yourself.	Since
I always use audio data in RAW format by brining it over from the Macintosh
I have no use or need for various sound file formats.

If you don't know what 8 bit unsigned PCM, 8 bit interleaved sound, and
16 bit signed sound means, then you will have to ask around on the networks
or read some books.  Though I have insulated the user from the ugly
details of the hardware layer, I can't insulate you from knowing about
sound programming.  That you will still have to do on your own.

==============================================================================
How do I play many sounds at once?
==============================================================================
DIGPAK supports only a single channel of sound at once, which reflects
the nature of almost every single PC sound card on the market.	To play
multiple sounds at one time requires that you 'mix' digital sound
samples in real-time.  Under protected mode DIGPAK I have a digital mixer
that keeps a constantly running stream of audio data, up to 16 channels
in 16 bit 11khz stereo in real-time taking almost none of the machine's
CPU.

With this release (v1.5) there is now a full 4 channel digital mixer for
DIGPAK, look at the demo application TMIX

==============================================================================
How do I get technical support?
==============================================================================
You ask around.  Look at the list of products above.  DIGPAK and MIDPAK work.
Many other programmers as well as myself have been able to do tremendous
things with the DIGPAK and MIDPAK programming interface.  Just look at any
of the PuttPutt products from Humongous Entertainment, or the music and sound
in The 7th Guest (which doesn't directly use MIDPAK but uses the same MIDI
driver and patch bank).  Programming a computer is extremely difficult.
That's why I have provided and will continue to provide lots of sample
source code for DIGPAK and MIDPAK.

But I cannot provide one-on-one technical support.  I have to write my games
too, and I have found out that just answering hundreds of people's programming
questions is a full-time job I'm not capable of keeping up with.  First
of all DIGPAK and MIDPAK licenses barely cover the cost of keeping the BBS
up and running.  Nobody wants me to charge even MORE for the drivers.

I haven't sold the DIGPAK and MIDPAK programmers kit for over a year.  By
making the DIGPAK and MIDPAK programmers kit widely available electronically
I hope to make lots of people educated in the use of the DIGPAK and MIDPAK
programmers interface.	Thus help will be available on the Internet,
Compuserve, and other places in the electronic community.

==============================================================================
What about VESA?
==============================================================================
The multimedia sound card industry is highly political.  I am fully
supporting the VESA standard for sound and music.  But it's not going to
happen overnight.  It will take at least the next 18 months before you
will be able to get the kind of sound driver support under VESA that is
currently available with DIGPAK and MIDPAK.  Additionally DIGPAK and
MIDPAK act as a value added API layer on top of VESA.  Especially MIDPAK
which provides extensive support for midi parsing, and interrupt service
control.


==============================================================================
How do I use DIGPAK drivers?
==============================================================================
The DIGPAK drivers all have the filename extension of .COM.  Starting at
byte offset 3 from the beginning of the file is the ascii string
'DIGPAK'.  The default DIGPAK driver should always be copied to the
filename SOUNDRV.COM.  DIGPAK drivers hook user interrupt vector 66h,
which is documented briefly in the book 'PC Interrupts: A Programmer's
Reference To BIOS, DOS, and Third-Party Calls' by Ralf Brown and Jim
Kyle, published by Addison Wesley.

You configure a DIGPAK driver by running the program SETD.EXE.

The complete API documentation for DIGPAK is in the file DIGPKAPI.DOC.
The C link layer for DIGPAK is through the C prototype header file
DIGPLAY.H and by linking to the object module DIGPLAY.OBJ produced
from DIGPLAY.ASM.

A DIGPAK driver can be loaded as a TSR simply by typing it's name.
You can load the default sound driver, as a TSR, by typing 'SOUNDRV'
and hitting enter.  You can unload that driver by typing 'SOUNDRV U'.
The preferred method of using a DIGPAK driver is to demand load it
in your program.  This is done by including the header file LOADER.H
in your program and linking to LOADER.C.

Simply look at the sample program TEST.C which fully demonstrates
loading both DIGPAK and MIDPAK and plays both music and sound effects.


==============================================================================
How do I use MIDPAK drivers?
==============================================================================
The SETM program will configure MIDPAK appropriately for your sound card
configuration.	SETM creates the three file components for MIDPAK.  They
are MIDPAK.COM, MIDPAK.ADV, and MIDPAK.AD. MIDPAK.COM is the MIDPAK
driver itself, which provides the API functionality through user
interrupt vector 66h.  MIDPAK loads into INT 66h as a layer ON TOP OF
DIGPAK.  Meaning if you want to use both DIGPAK and MIDPAK at the same
time, you first load DIGPAK, and then load MIDPAK.  The file MIDPAK.ADV
is the AIL MIDI driver from Miles Design Inc.  MIDPAK represents a
subset of the full AIL specification.  The complete AIL (Audio Interface
Library) supports vastly greater interactive control over music.  If you
are interested in purchasing the complete AIL system you can call Miles
Design at 1-512-345-2642.  The AIL license includes full-source code
disclosure, real-mode, protected mode, and Windows DLL versions, and a
$7,500 one-time license fee (not for all three versions, but for each).
Please don't call if you aren't prepared to pay the full license amount.

The last file is MIDPAK.AD.  This is the instrument definition file for
OPL2 and OPL3 base sound cards (adlib, soundblaster, etc.).  This file
is ignored on hardware MIDI implementation sound cards like the Sound
Canvas, but is still must exist in the directory at load time.

This instrument file conforms to the general MIDI specification and
was created by The Fat Man.  There is a distribution license fee
associated with the use of this MIDPAK.AD file!  You must mail a
copy of your product, a check for $1, and include the following credit:

 "General MIDI patches (c) 1994 The Fat Man and K. Weston Phelan"


	The Fat Man
	7611 Shoal Creek Blvd.
	Austin, TX 78757
	1-512-454-5775
	BBS: 1-512-454-9990

Call the Fat Farm BBS to obtain more detailed information regarding the
General MIDI license agreement.

Like DIGPAK, MIDPAK can be loaded and unloaded as a TSR.  Simply type
'MIDPAK' and it will load and stay resident.  Typing 'MIDPAK U' will
unload the MDIPAK driver.


==============================================================================
What is 'eXtended MIDI'?
==============================================================================
MIDPAK, because it uses the AIL drivers from Miles Design, does not play
MIDI files DIRECTLY.  Your MIDI file must be converted into eXtended
MIDI format.  This is a pre-parsed MIDI file format created by Miles Design.
The eXtended MIDI file format supports multiple MIDI sequences in a
single file, that MIDPAK will let you switch to almost instantly using
the PlaySequence command.  You add multiple MIDI files to a single eXtended
MIDI file (XMI) as follows:  Say you have three song files call SONGA.MID
SONGB.MID and SONGC.MID and wanted to put them all in one XMI file.
You would do the following:

	MIDIFORM SONG.XMI SONGA.MID SONGB.MID SONGC.MID

This places the three MIDI sequences into the single eXtended MIDI
file SONG.XMI.	They would be accessed in MIDPAK as PlaySequence(0)
PlaySequence(1) and PlaySequence(2).


==============================================================================
What format should the MIDI data be in?
==============================================================================
On a true MIDI device like an MPU401 MT-32 or SoundCanvas, exactly what
is found in the MIDI stream is passed to the device.  So however that
MIDI device responds to MIDI is what gets passed down.	(Excluding
SysEx messages).

But on an Adlib or SoundBlaster MIDPAK EMULATES a MIDI device.	And that
EMULATION has certain restrictions.

Channels 2-9 are the melodic tracks.
Channel  10 percussions.

The patch set is in the general MIDI format.

I know very little about MIDI, and rely heavily on professional MIDI
composers to provide my music.	To get your MIDI music into MIDPAK
compatible format so that is sounds GREAT, you can contact the
following composers:


	Wallace Music & Sound
	Rob Wallace, Executive Producer
	6210 West Pershing Avenue
	Glendale, Arizona 85304-1141
	1-602-979-6201

	Computer Music Consulting
	Donald S. Griffin
	239 Richland Avenue
	San Francisco, CA 94110
	415-285-3852

	The Fat Man
	7611 Shoal Creek Blvd.
	Austin, TX 78757
	1-512-454-5775

These guys have all done numerous projects composing with AIL and
MIDPAK.  They know how to make an Adlib, SoundBlaster, and SoundCanvas
sound AWESOME.	But they are also professionals.  Please DO NOT CALL
any of these guys unless you are prepared to accept a bid for a project.

If you think the license fee for MIDPAK at $500 is high, then wait
until you find out how much a professional music score costs.  Even
for a small project you are talking several thousand dollars.  So
unless you have a legitimate music budget please do not call these
guys.

I would recommend that you call Rob Wallace and get a bid on having
all of your musical scores tweaked for the various sound cards.


==============================================================================
When I play my MIDI music with MIDPAK some of the music seems to be missing?
==============================================================================
Check your channel assignments.  MIDI emulation on SoundBlaster etc, occurs
on channels 2-9 for melodic tracks, and channel 10 for percussions.  A lot
of sequencing software saves MIDI out starting with channel 1.	Channel
1 is ignored under MIDPAK's MIDI emulation.  MIDPAK channel assignments
were designed to emulate those of a Roland MT-32.  Even though we have
provided a set of General MIDI patch assignments, the channel assignments
are still limited to 2-9 and 10 as indicated here.

==============================================================================
The music on MIDPAK sounds differently than inside my sequencer?
==============================================================================
Your sequencer is using a different set of patchs than MIDPAK uses.  Contact
any of the composers mentioned above to get your MIDI tweaked to sound good
with the MIDPAK patches.  BE PREPARED TO PAY A REASONABLE FEE FOR THIS
SERVICE!!  I strongly recommend getting your music done professionally.
The composers listed above have great experience at making music
sound good with MIDPAK.

==============================================================================
When I specify a volume change with MIDPAK nothing happens?
==============================================================================
MIDPAK's volume changes are relative to the base volume for that channel.
If you didn't specify a base volume for each channel in your MIDI file then
MIDPAK can't change the volume.  You specify the base volume for a MIDI channel
with a controller 7.

==============================================================================
Can I use the same MIDI file for all sound cards?
==============================================================================
No.  But you can come close.  Start by scoring for general MIDI, but it's
best to tweak for SoundCanvas, General MIDI, OPL2/OPL3, and re-patch for
MT-32.	Base volumes are quite a bit different on each device, and different
patches sound better/worse across these devices.  The source code to the
SETM (MIDPAK configuration program) is provided within (SETUP.ZIP) and
depending on which sound driver the user selects you can copy different
versions of your music.

==============================================================================
Why does MIDPAK hang under Windows?
==============================================================================
Because of a bug in Microsoft Windows it doesn't support all of the
hardware interrupts on the machine.  Specifically the CMOS real-time
clock which MIDPAK uses.  If you use the TMIDPAK.COM version if MIDPAK
this will work under Windows but it might casue other conflicts with
your application.  One option is to use PMIDPAK.COM (polled MIDPAK) and
to service the MIDI interrupt (at 120hz) yourself.


==============================================================================
What are all of these files?
==============================================================================

ADLIB.ADV	Adlib AIL MIDI driver.
ADLIB.ADD	Description file for ADLIB.ADV
ADLIB.COM	DIGPAK Adlib digital sound driver.

ADLIBG.COM	Adlib Gold DIGPAK sound driver.
ADLIBG.ADV	Adlib Gold AIL MIDI driver.
ADLIBG.ADD	Description file for ADLIBG.ADV

AGU16.XMI	Demonstration MIDI file by The Fat Man
AGU16.DES	MENU Description file for AGU16.XMI

ARIA.COM	DIGPAK sound driver for Sierra Semiconductors Aria cards.
ARIAXMID.ADV	Aria AIL MIDI driver.
ARIAXMID.ADD	Description file for ARIAXMID.ADV
GM2.BNK 	General MIDI intrument file for ARIA (REQUIRED!)

BIGMOUTH.COM	DIGPAK driver for Talking Technologies BigMouth card.

CMIDPAK.COM	CMOS real-time clock version of MIDPAK>

COOL!.SND	Demonstration sound effect from Wallace Music & Sound
COOL!.DES	MENU Description file for COOL!.SND

CREDITS.XMI	Demonstration MIDI file from Wallace Music & Sound
CREDITS.DES	MENU Description file for CREDITS.XMI

CVXSND.COM	DIGPAK sound driver for Covox Speech Thing.

DESERT.XMI	Demonstration MIDI file from Wallace Music & Sound
DESERT.DES	MENU Description file for DESERT.XMI

DIGISP.COM	DIGPAK driver for Digispeech DS201.

DIGPKAPI.DOC	API Specification Documentation for DIGPAK.

DIGVESA.COM	DIGPAK sound driver for VESA compliant Wave interface.

DOS4GW.EXE	DOS 4GW DOS Extender used for Flat-Model DEMO programs.

EARTH.XMI	Demonstration MIDI file from Wallace Music & Sound
EARTH.DES	MENU Description file for EARTH.XMI

ECHOII.COM	DIGPAK sound driver for Street Electronics Echo II

FAT.OPL 	MIDPAK General MIDI patch set by the Fat Man.

FLAT <DIR>	Contains full source to protected mode interface for
		DIGPAK & MIDPAK.

GENMID.ADV	AIL MPU401 General MIDI driver.
GENMID.ADD	Description file for GENMID.ADV

GF166.COM	DIGPAK driver for Gravis Ultrasound
GF1MIDI.ADV	AIL MIDI driver for Gravis Ultrasound
GF1MIDI.ADD	Description file for GF1MIDI.ADV

GU23.XMI	Demonstration MIDI file by The Fat Man
GU23.DES	MENU Description file for GU23.XMI

IBM1BIT.COM	DIGPAK PC Speaker driver 1 bit sound.
IBMBAK.COM	DIGPAK PC Speaker driver, foreground only.
IBMSND.COM	DIGPAK PC Speaker driver, limited background audio.

LANTSND.COM	DIGPAK driver for Lantastic Audio Adaptor from Artistoft.

LSIZE.COM	DIGPAK driver for the Life Size Sound Enhancer.

MAJESTY.XMI	Demonstration MIDI file from Wallace Music & Sound
MAJESTY.DES	MENU Description file for MAJESTY.XMI

MARIO.XMI	Demonstration MIDI file from Wallace Music & Sound
MARIO.DES	MENU Description file for MARIO.XMI

MENU.EXE	MIDPAK & DIGPAK Music & Sound browser.

MIDIFORM.EXE	Convert MIDI files into eXtended MIDI file format (XMI)

MIDPAK.ADV	Currently configured AIL MIDI driver.
MIDPAK.COM	Currently configured MIDPAK driver.
MIDPAK.AD	Currently configured MIDPAK patch bank file.

MIDPKAPI.DOC	API Specification Documentation for MIDPAK.

MT32MPU.ADV	AIL MIDI driver for MT-32/LAPC
MT32MPU.ADD	Description file for MT32MPU.ADV

MULTISND.ADV	Turtle Beach Multisound AIL MIDI driver.
MULTISND.ADD	Description file for MULTISND.ADV
MULTISND.COM	DIGPAK Turtle Beach Multisound driver.
		(BETA, requires PRESETS utility to have been run,
		see TURTLE.ZIP)

NEWS.XMI	Demonstration MIDI file from Wallace Music & Sound
NEWS.DES	MENU Description file for NEWS.XMI

NOSOUND.COM	Functional DIGPAK driver that plays no sound.  Responds
		to all DIGPAK functions, for timing considerations but
		takes little CPU.  Sometimes preferable over the lame
		PC Speaker drivers.

PAS16.COM	DIGPAK sound driver for MediaVision ProAudio Spectrum 16
		and Logitech Soundman 16.  Full 16 bit sound support.

PASFM.ADV	AIL MIDI driver for ProAudio Spectrum
PASFM.ADD	Description file for PASFM.ADV

PASOPL.ADV	AIL MIDI driver for ProAudio Spectrum 16, etc.
PASOPL.ADD	Description file for PASOPL.ADD

PAUDIO.COM	ProAudio Spectrum DIGPAK sound driver.

PCSPKR.ADV	AIL PC Speaker driver (only responds to channel 2 of MIDI)
PCSPKR.ADD	Description file for PCSPKR.ADV

PEND.EXE	Flat model demo program, uses PostAudioPending calls
		and auto-init DMA.  To use type PEND PEND.SND after
		you have configured a DIGPAK sound driver.

PEND.SND	Demo sound effect for PEND.EXE

PMIDPAK.COM	Polled version of MIDPAK.  Application required to
		provide timer services.

REAL<DIR>	Demonstration source code in normal DOS real-mode.

REMOVE.BAT	Batch file to remove configured MIDPAK and DIGPAK
		sound drivers.

SB16.COM	BETA DIGPAK sound driver for SoundBlaster 16.
		Supports 16 bit stereo sound.

SBCLONE.COM	DIGPAK sound driver for SoundBlaster Clones.

SBFM.ADV	AIL SoundBlaster MIDI driver.
SBFM.ADD	Description file for SBFM.ADV

SBLASTER.COM	Creative Labs SoundBlaster DIGPAK sound driver.

SBP1FM.ADV	AIL SoundBlaster Pro original MIDI driver.
SBP1FM.ADD	Description file for SBP1FM.ADV

SBP2FM.ADV	AIL SoundBlaster Pro current MIDI driver (OPL3).
SBP2FM.ADD	Description file for SBP2FM.ADV

SBPRO.COM	Creative Labs SoundBlaster Pro DIGPAK sound driver.

SC32MPU.ADV	AIL MIDI driver for Roland Sound Canvas
SC32MPU.ADD	Description file for SC32MPU.ADV

SEA.XMI 	Demonstration MIDI file from Wallace Music & Sound
SEA.DES 	MENU Description file for SEA.XMI

SEGUE.EXE	Demonstration flat model program using SegueSequence.

SENSAT.ADV	AIL MIDI driver for Tandy Sensation.
SENSAT.ADD	Description file for SENSAT.ADV

SETD.SND	Demonstration sound effect for DIGPAK setup program SETD
SETD.EXE	DIGPAK setup/config program.  Source in SETUP.ZIP
SETD.DES	MENU Description file for SETD.SND

SETM.XMI	Demonstration MIDI file for MIDPAK setup program SETM
SETM.EXE	MIDPAK setup program. Source code in SETUP.ZIP
SETM.DES	Description file for SETM.XMI

SETUP.ZIP	Source code to SETM and SETD.  Borland C 3.1 format.

SETUP.BAT	Batch file to configure both DIGPAK and MIDPAK drivers.

SHYA!.SND	Demonstration sound effect from Wallace Music & Sound
SHYA!.DES	MENU Description file for SHYA!.SND

SKY.XMI 	Demonstration MIDI file from Wallace Music & Sound
SKY.DES 	MENU Description file for SKY.XMI

SMSND.COM	Covox Voice Master II, SoundMaster I, DIGPAK driver.

SNDSYS.COM	Microsoft Windows Sound System DIGPAK driver.

SOUNDRV.COM	Default configured DIGPAK sound driver.

SOURCE.COM	Walt Disney Sound Source DIGPAK sound driver.

STFX.COM	ATI Stereo FX DIGPAK sound driver.

TANEXTX.COM	Tandy EX/TX/SX/HX PC jr, DIGPAK sound driver.

TANSLTL.COM	Tandy Sensation DIGPAK sound driver.

TEST.EXE	Flat Model DIGPAK/MIDPAK demonstration program.
TEST.SND	Demonstration sound effect.
TEST.XMI	Demonstration MIDI file.
TEST1.SND	Another test sound effect.
TEST16.EXE	Flat model DIGPAK demo program of all DIGPAK play modes.
TEST2.SND	Another test sound effect.

TITLE.XMI	Demonstration MIDI file from Wallace Music & Sound
TITLE.DES	Description file for TITLE.XMI

TMIDPAK.COM	8253 Timer Based MIDPAK.

VECTOR.COM	Interrupt vector handler used by flat-model demo programs.

VMSND.COM	Covox Voice Master I DIGPAK sound driver.

WSS.ADV 	AIL MIDI driver for Microsoft Windows Sound System.
WSS.ADD 	Description file for WSS.ADV


