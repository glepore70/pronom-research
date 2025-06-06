
Short:	Music editor, can handle 8 voices
Architecture:	m68k-amigaos
Source:	Fred Fish
Date:	1993-03-26
Download:	http://aminet.net/mus/edit/OctaMED.lzh - View contents
Readme:	http://aminet.net/mus/edit/OctaMED.readme
Downloads:	1434
OctaMED		A music editor which was originally designed for making music
		for programs (demos, games, etc), but works well as a stand-
		alone music program as well.  OctaMED is the 8-channel version
		of MED.  
		
http://aminet.net/package/mus/edit/OctaMED
https://www.exotica.org.uk/wiki/OctaMED


-----------------------------------------------------------------------------
        MED/OctaMED MMD0 and MMD1 file formats
        written by Teijo Kinnunen (25.4.1992)
        Revision 1
-----------------------------------------------------------------------------

Background
----------
A  couple of years ago, when programming MED V2.1, I needed a file format for
MED  modules.   The  only  "module"  format  in  MED V2.0 was the Sng+samples
format.  Although it produced compact files, it was very difficult and tricky
to  read  in.  Therefore, I designed a new file format, that would be easy to
use  in  module  player programs etc.  This file format was named 'MMD0' (Med
MoDule  0).   The  limitations in MMD0 block format forced me to create a new
file format for OctaMED Professional, this format is 'MMD1'.  It's mostly the
same  as  MMD0, except the block structure is different.  At the time of this
writing  (when  OctaMED  Pro is not even released yet), MMD0's are absolutely
more common than MMD1's.

Design concepts
---------------
One  of  the  main  goals  was  to  make MMD's (MED modules) as extensible as
possible.   This  would  have  been  easy to implement with IFF-style chunks.
However, this method is obviously not the best for play-routine use.

Therefore, MMD's are implemented in quite an extraordinary way.  They consist
of  structures  (similar  to  C  structs),  and  pointers.  In a module file,
pointers  are defined as offsets from the beginning of the module.  This way,
a  particular  structure  can be read just by Seek()'ing using the pointer as
the  offset from the beginning of the file.  When a module has been read into
memory,  it has to be relocated before it can be used (the relocation is done
simply by adding the address of the module to the pointers).

As  with  the  Amiga  OS,  a  MMD  file  does not contain absolute addresses.
There's  a  module  header  structure  at  the  beginning  of the file.  This
structure contains pointers to different parts of the module.  And you *MUST*
use  these pointers.  You may NOT expect that the song structure is at offset
$00000034,  for  example.   Although it usually is, this may change in future
releases.   In  addition,  it's  possible that a structure even doesn't exist
(the  structure  pointer is NULL).  Therefore, you *MUST* check the structure
pointer  before  accessing  the  structure.   Finally, when writing MMD's you
*MUST*  set  undefined/reserved  fields  to  zeros.  More finally, you *MUST*
align  all  structures  to  even  boundaries!  (I forgot the alignment in MED
V3.00 save routine, resulting Guruing modules under some conditions :-(

The module header
-----------------
This  structure must exist at the beginning of each MED module file.  Each of
the structure members are described below.

In  multi-modules,  there  are header structs for each song.  (The subsequent
header  pointers  can  be found from expdata structure.  Multi-modules should
have  the  same  smplarr  pointer  in  every  header.) Older MEDs which don't
recognize  multi-modules  consider a multi-module as an ordinary module (only
the first song is loaded).

The numbers enclosed in /* */ at the beginning of each line are (decimal)
offsets of each member (for assembly programmers).

-----------------------------------------------------------------------------
struct MMD0 {
/* 0 */     ULONG   id;
/* 4 */     ULONG   modlen;
/* 8 */     struct MMD0song *song;
/* 12 */    ULONG   reserved0;
/* 16 */    struct MMD0Block **blockarr;
/* 20 */    ULONG   reserved1;
/* 24 */    struct InstrHdr **smplarr;
/* 28 */    ULONG   reserved2;
/* 32 */    struct MMD0exp *expdata;
/* 36 */    ULONG   reserved3;
/* 40 */    UWORD   pstate;  /* some data for the player routine */
/* 42 */    UWORD   pblock;
/* 44 */    UWORD   pline;
/* 46 */    UWORD   pseqnum;
/* 48 */    WORD    actplayline;
/* 50 */    UBYTE   counter;
/* 51 */    UBYTE   extra_songs; /* number of songs - 1 */
}; /* length = 52 bytes */

-----------------------------------------------------------------------------
id
--
This longword is used to identify the MMD and its version.  Currently defined
MMD  types are MMD0 (0x4D4D4430) and MMD1 (0x4D4D4431).  MMD2 and upwards are
reserved for future versions.

In  multi-modules,  the  following  modules usually contain id MCNT, or MCN1.
The first module always has MMD0 or MMD1 as an id.

modlen
------
This longword contains the length of the entire module.

song
----
Pointer to a MMD0song structure. This structure MUST ALWAYS EXIST!

blockarr
--------
Pointer to a table of block pointers. For example:
    blockarr:  $00003000
            block 0 ptr block 1 ptr block 2 ptr
offset  $00003000:  $00002000,  $00002400,  $00002800 ....

offset  $00002000: block 0 data...
offset  $00002400: block 1 data...
..
The size of the table is MMD0song.numblocks longwords.

smplarr
-------
Pointer to a table of instrument pointers. The size of the table is
MMD0song.songlen longwords. This pointer is zero in OctaMED Pro MMD1 songs.
In this case, OctaMED Pro loads the instruments from disk(s).

expdata
-------
Pointer to an expansion structure.  The expansion structure contains a lot of
extra  information.   The  exp.   structure does not exist in all MMD's.  (Be
sure to check the pointer before using it.)

pstate, pblock, pline, pseqnum, actplayline, counter
----------------------------------------------------
These  are  variables for the play routine.  You can read these fields to get
the  current  song  position  (not all versions of the play routine use these
fields,  however).   When writing a MMD, you should leave all fields to zero,
except the 'actplayline', which ought to be -1 ($FFFF).

extra_songs
-----------
This  field  contains  the  number  of  songs  in  the  current  module.  For
non-multi-modules,  this  is 0.  If there are two songs, extra_songs contains
1, and so on.

reserved0,1,2,3
---------------
Not currently defined. Set to zero.


The song structure (MMD0song)
-----------------------------
This  structure contains the basic information about the song.  It must exist
on every module file.

-----------------------------------------------------------------------------
struct MMD0song {
    struct MMD0sample sample[63];   /* 63 * 8 bytes = 504 bytes */
    UWORD   numblocks;      /* offs: 504 */
    UWORD   songlen;        /* offs: 506 */
    UBYTE   playseq[256];       /* offs: 508 */
    UWORD   deftempo;       /* offs: 764 */
    BYTE    playtransp;     /* offs: 766 */
    UBYTE   flags;          /* offs: 767 */
    UBYTE   flags2;         /* offs: 768 */
    UBYTE   tempo2;         /* offs: 769 */
    UBYTE   trkvol[16];     /* offs: 770 */
    UBYTE   mastervol;      /* offs: 786 */
    UBYTE   numsamples;     /* offs: 787 */
}; /* length = 788 bytes */

-----------------------------------------------------------------------------
sample
------
Contains some basic info about each sample. The structure looks like this:

-----------------------------------------------------------------------------
    struct MMD0sample {
        UWORD rep,replen;   /* offs: 0(s), 2(s) */
        UBYTE midich;       /* offs: 4(s) */
        UBYTE midipreset;   /* offs: 5(s) */
        UBYTE svol;     /* offs: 6(s) */
        BYTE strans;        /* offs: 7(s) */
    };

-----------------------------------------------------------------------------
    rep     repeat start offset, shifted right one bit (as in
            Protracker).
    replen      repeat length, shifted right one bit.
    midich      MIDI channel for current instrument, 0 if not MIDI.
    midipreset  MIDI preset number for current instrument, 0 if no
            preset.
    svol        default volume for current instrument (0 - 64).
    strans      instrument transpose value.

More information is defined in expdata structure.

numblocks
---------
Number  of  blocks  in current song.  This field also indicates the length of
the blockarr table in longwords.

songlen
-------
Song length (number of sequence numbers in the play sequence list).

playseq
-------
This is the play sequence list.

deftempo
--------
Default  song  tempo (the leftmost tempo slider in MED/OctaMED).  If BPM mode
is on, this value indicates BPM.

playtransp
----------
The global play transpose value for current song.

flags
-----
Contains many single-bit flags:
    FLAG_FILTERON   0x1 the hardware audio filter is on
    FLAG_JUMPINGON  0x2 mouse pointer jumping on (not in OctaMED Pro)
    FLAG_JUMP8TH    0x4 jump every 8th line (not in OctaMED Pro)
    FLAG_INSTRSATT  0x8     sng+samples indicator (not useful in MMD's)
    FLAG_VOLHEX 0x10    volumes are HEX
    FLAG_STSLIDE    0x20    use ST/NT/PT compatible sliding
    FLAG_8CHANNEL   0x40    this is OctaMED 5-8 channel song

    (bit 0x80 is not defined, and must be set to zero)

flags2
------
More flags, currently only BPM stuff:
    FLAG2_BMASK 0x1F (bits 0-4)     BPM beat length (in lines)
                        0 = 1 line, $1F = 32 lines.
                    (The rightmost slider in OctaMED Pro
                     BPM mode.)
    FLAG2_BPM   0x20    BPM mode on

    (bits 0x40 and 0x80 are not defined, and must be set to zero)

tempo2
------
This is the "secondary tempo" (the rightmost MED/OctaMED tempo slider),
indicating the number of timing pulses per line.

trkvol[16]
----------
The relative track volumes (1 - 64) for each track.

mastervol
---------
The relative master volume (1 - 64).

numsamples
----------
Number  of instruments (samples/synthsounds) in current song.  Also indicates
the size of the smplarr table in longwords.


The block format
----------------
As  described above, MMD0 header structure contains a pointer (blockarr) to a
table of block pointers.  These block pointers point to the actual block data
structures.  The format of these data structures differ in MMD0 and MMD1 file
formats.

MMD0 block format
-----------------
At the beginning of each block, there's a small header:

-----------------------------------------------------------------------------
    struct MMD0Block {
        UBYTE numtracks,lines;
    };

-----------------------------------------------------------------------------
    numtracks   number of tracks (4, 8, 12 or 16) on this block
    lines       number of lines on this block; 0 = 1 line,
            255 = 256 lines

Following  this  header,  there is the actual note data, consisting of 3-byte
structures  containing  a  note  and  its  command.   The  data  is  arranged
sequentially a line at a time, i.e. in the following order:
    line 0 track 0
    line 0 track 1
    line 0 track 2
    line 0 track 3
    line 1 track 0
    line 1 track 1
    ...
The 3-byte structure looks like this (each letter corresponds to one bit):

    xynnnnnn iiiicccc dddddddd

    n = note number (0 - $3F). 0 = ---, 1 = C-1, 2 = C#1...
    i = the low 4 bits of the instrument number
    x = the 5th bit (#4) of the instrument number
    y = the 6th bit (#5) of the instrument number
    c = command number (0 - $F)
    d = databyte ($00 - $FF)

MMD1 block format
-----------------
MMD1  block format can contain a lot more information than MMD0's.  The block
header looks like this:

-----------------------------------------------------------------------------
    struct MMD1Block {
        UWORD numtracks;
        UWORD lines;
        struct BlockInfo *info;
    };

-----------------------------------------------------------------------------
    numtracks   Number of tracks in this block (4, 8, 12, or 16).
    lines       Number of lines in this block (0 = 1 line etc.).
            OctaMED Pro can handle upto 3200 lines/block, so
            this is obviously the practical upper limit.
    info        Pointer to structure containing extra information.
            (Can be NULL, if no BlockInfo struct exists).

    The BlockInfo structure is:

-----------------------------------------------------------------------------
    struct BlockInfo {
        ULONG   *hlmask;
        UBYTE   *blockname;
        ULONG   blocknamelen;
        ULONG   reserved[6];
    };

-----------------------------------------------------------------------------
    hlmask      Pointer to an array of longwords, containing info
            about line highlighting (TAB key on MED). The number
            of longwords depend on the number of lines on the
            block. (E.g: 1 line -> 1 longword, 32 lines -> 1 lw,
            33 lines -> 2 lws, 256 lines -> 4 lws)
            The bits in the longwords are arranged in reversed
            order (e.g. bit #0 = line 0, bit #31 = line 31).

    blockname   Pointer to the name of the block. Must be null-
            terminated.

    blocknamelen    Length of the block name, including the terminating
            zero. OctaMED Pro currently has the maximum length of
            41 chars (+ zero). However, this may change in the
            future. Don't read blocknames longer than you are
            able to handle!

    reserved[6] These are reserved for future extensions. Must be set
            to zero.

    The note structures, which are 4 bytes long in MMD1 modules, are
    arranged exactly as in MMD0 modules.

        xnnnnnnn xxiiiiii cccccccc dddddddd

    n = note number (0 - $7F, 0 = ---, 1 = C-1...)
    i = instrument number (0 - $3F)
    c = command ($00 - $FF)
    d = databyte ($00 - $FF)
    x = undefined, reserved for future expansion. MUST BE SET TO ZERO,
        AND MASKED OUT WHEN READING THE NOTE OR INSTRUMENT NUMBER.


The instrument format
---------------------
The  MMD0  header  structure  contains  a  pointer  (smplarr)  to  a table of
instrument  pointers.   These  pointers  point  to the actual instrument data
structures.   If an instrument pointer is zero, there's no instrument in that
slot.

Every  instrument  has a six-byte header structure, which is the same for all
instrument types (sample/synth/hybrid).

-----------------------------------------------------------------------------
    struct InstrHdr {
        ULONG   length;
        WORD    type;
        /* Followed by actual data */
    };

-----------------------------------------------------------------------------
    length      indicates the length of the instrument (the six byte
            header data length is not included)
    type        instrument type - currently the following types are
            defined:

        HYBRID      -2
        SYNTHETIC   -1
        SAMPLE      0   (an ordinary 1-octave sample)
        IFF5OCT     1   (5 octaves)
        IFF3OCT     2   (3 octaves)
        (The following ones are recognized by OctaMED Pro only)
        IFF2OCT     3   (2 octaves)
        IFF4OCT     4   (4 octaves)
        IFF6OCT     5   (6 octaves)
        IFF7OCT     6   (7 octaves)

The sample-type instruments (>= 0) contain the actual sample data straight
after the header structure.

Synthetic instruments
---------------------
Synthsounds  have  a  special  structure  of  their  own.   They also contain
waveforms and pointers to them.  Therefore, relocation is required.  However,
there's  an  important  difference:  pointers are expressed as an offset from
the  beginning  of  the  synthsound,  NOT  the  beginning of the module.  The
'reloc.a' routine provided with MED/OctaMED automatically handles this.

The synthsound structure is as follows (note that this structure contains the
header structure):

-----------------------------------------------------------------------------
    struct SynthInstr {
        ULONG   length;     /* length of this struct */
        WORD    type;       /* -1 or -2 (offs: 4) */
        UBYTE   defaultdecay;
        UBYTE   reserved[3];
        UWORD   rep;
        UWORD   replen;
        UWORD   voltbllen;  /* offs: 14 */
        UWORD   wftbllen;   /* offs: 16 */
        UBYTE   volspeed;   /* offs: 18 */
        UBYTE   wfspeed;    /* offs: 19 */
        UWORD   wforms;     /* offs: 20 */
        UBYTE   voltbl[128];    /* offs: 22 */
        UBYTE   wftbl[128]; /* offs: 150 */
        struct  SynthWF *wf[64]; /* offs: 278 */
    };

-----------------------------------------------------------------------------
    defaultdecay    = the default decay of the current synthsound. This
              is NOT used in modules. It's significant only when
              saving a single synthsound.

    reserved[3] = set to zero.

    rep, replen = repeat/rep. length for hybrid sounds. Used only
              when saving a single hybrid sound.

    voltbllen   = the length of the volume sequence table.

    wftbllen    = the length of the waveform sequence table.

    volspeed    = the initial volume table execution speed.

    wfspeed     = the initial waveform table execution speed.

    wforms      = the number of waveforms in the current synthsound.

    voltbl      = the actual volume sequence table. Values $00-$7F
              are volumes or command arguments. Values >= $80 are
              commands. The following commands are currently
              defined:
                $FF END     $F4 EN1
                $FE JMP     $F3 CHU
                $FB HLT     $F2 CHD
                $FA JWS     $F1 WAI
                $F6 EST     $F0 SPD
                $F5 EN2

    wftbl       = the actual waveform sequence table. Values $00-$7F
              are waveform numbers  or command arguments. Values
              >= $80 are commands. The following commands are
              currently defined:
                $FF END     $F6 RES
                $FE JMP     $F5 VBS
                $FD ARE     $F4 VBD
                $FC ARP     $F3 CHU
                $FB HLT     $F2 CHD
                $FA JVS     $F1 WAI
                $F7 VWF     $F0 SPD

    wf      = pointers to waveforms. (Once again: relative to the
              beginning of the synthsound!) A waveform structure
              is as follows:

                struct SynthWF {
                    UWORD length;   /* length in words */
                    BYTE  wfdata[xx]; /* the waveform */
                };

                (where xx = length in bytes)

              In hybrid sounds, however, wf[0] is different.

Hybrid instruments
------------------
Hybrid  sounds  use  the same structure as synthsounds, except that the first
waveform  (wf[0])  pointer  points to a sample.  (The sample header structure
exists, as usual.)


MMD0exp - the key to future expansions
--------------------------------------
For  possible  future  expansions,  I  designed  a structure for carrying the
miscellaneous things that were added to MED/OctaMED now and then.  (MED V3.00
was the first version, which wrote this structure.) Most of its fields are in
use  now,  but it's possible to even expand this structure (things will get a
bit more tricky, though).

In multi-modules, you should extract all data from the expansion structure of
the  first  song.   The  only  exceptions  are  currently  the  'nextmod' and
'songname' fields, which are song-specific.

Also,  there  has  been  need  for  extending the MMD0sample structure.  Both
InstrExt  and  MMDInstrInfo  provide extra information about the instruments.
These  are  defined as structure arrays (exp_smp and iinfo point to the first
structure).  The extension structures don't have a constant size, instead you
have  to  read s_ext_entrsz or i_ext_entrsz to get the structure sizes.  When
reading,  you  have to check the entrsz fields to see which structure members
do exist.

The  difference  between  InstrExt and MMDInstrInfo is that InstrExt contains
information the play-routine is interested in (e.g.  finetune).  MMDInstrInfo
contains  "secondary"  information,  which is of no use to the player routine
(e.g.  instrument name).

The expansion structure follows:

-----------------------------------------------------------------------------
    struct MMD0exp {
        struct MMD0 *nextmod;
        struct InstrExt *exp_smp;
        UWORD  s_ext_entries;
        UWORD  s_ext_entrsz;
        UBYTE  *annotxt;
        ULONG  annolen;
        struct MMDInstrInfo *iinfo;
        UWORD  i_ext_entries;
        UWORD  i_ext_entrsz;
        ULONG  jumpmask;
        UWORD  *rgbtable;
        UBYTE  channelsplit[4];
        struct NotationInfo *n_info;
        UBYTE  *songname;
        ULONG  songnamelen;
        struct MMDDumpData *dumps;
        ULONG  reserved2[7];
    };

-----------------------------------------------------------------------------
    nextmod     = pointer to the next module (or zero). (Only used in
              multi-modules!)

    exp_smp     = pointer to InstrExt. Currently the first four bytes
              of InstrExt have been defined:

                struct InstrExt {
                    UBYTE hold;
                    UBYTE decay;
                    UBYTE suppress_midi_off;
                    BYTE  finetune;
                };

                hold, decay = hold/decay values of the
                          instrument

                suppress_midi_off = 0 (FALSE) or not (TRUE)

                finetune    = instrument finetune (-8-+7)

    s_ext_entries   = the size of InstrExt structure array (i.e. the
              number of InstrExt structures).

    s_ext_entrsz    = the size of each InstrExt structure (in bytes).

    annotxt     = pointer to the annotation text (null-terminated).

    annolen     = length of 'annotxt', including the terminating \0.

    iinfo       = pointer to MMDInstrInfo. Currently the first forty
              bytes have been defined:

                struct MMDInstrInfo {
                    UBYTE   name[40];
                };

                name = null-terminated instrument name

    i_ext_entries   = the size of the MMDInstrInfo struct array (i.e. the
              number of MMDInstrInfo structures).

    i_ext_entrsz    = the size of each MMDInstrInfo struct in bytes.

    jumpmask    = a mask controlling which instruments cause the
              mouse pointer to jump. E.g. bit #1 = instr. #1.
              This field has become obsolete in OctaMED Pro.

    rgbtable    = pointer to eight UWORDs (screen colors) to be
              passed to LoadRGB4() routine.

    channelsplit    = this longword is divided to four boolean bytes,
              controlling channel splitting in OctaMED 5 - 8 chnl
              modes. (A non-zero byte means that the channel is
              NOT splitted.) Currently only the following
              combinations should be used:

              0x00000000 (8 channels (or normal 4 channel mode))
              0x000000FF (7 channels)
              0x0000FFFF (6 channels)
              0x00FFFFFF (5 channels)

    n_info      = pointer to NotationInfo structure (used only in
              OctaMED V2.0 and later). It contains some info for
              the notation editor.

                struct NotationInfo {
                    UBYTE n_of_sharps;
                    UBYTE flags;
                    WORD  trksel[5];
                    UBYTE trkshow[16];
                    UBYTE trkghost[16];
                    BYTE  notetr[63];
                    UBYTE pad;
                };

              n_of_sharps   = number of sharps or flats (0 - 6)
              flags     = misc. bits, these are defined:
                        NFLG_FLAT   1
                    (= use flats instead of sharps)
                        NFLG_3_4    2
                    (= display 12 lines instead of 16)

              trksel    = the number of the selected track,
                      for each display preset
                        (-1 = no track selected)

              trkshow   = tracks shown (five bits used in
                      each byte, bit #0 = preset 1, etc.)

              trkghost  = tracks ghosted (as in 'trkshow')

              notetr    = note transpose value for each
                      instrument (-24 - +24). If bit 6 is
                      negated, the instrument is hidden.

              pad       = possibly holding info about struct
                      expansions in the future. Don't
                      touch!

    songname    = song name of the current song (0-terminated).
              Each song of a multi-module can have a different
              name.

    songnamelen = song name length (including the terminating zero).

    dumps       = MIDI dump data (created using OctaMED Pro MIDI
              message editor). The 'dumps' field points to the
              following struct:

                struct MMDDumpData {
                    UWORD   numdumps;
                    UWORD   reserved[3];
                };

              Immediately after this struct, there are 'numdumps'
              pointers to the following struct:

                struct MMDDump {
                    ULONG   length;
                    UBYTE   *data;
                    UWORD   ext_len;
                    /* if ext_len >= 20: */
                    UBYTE   name[20];
                };

              length    = length of the MIDI message dump.

              data      = pointer to the actual MIDI dump
                      data.

              ext_len   = MMDDump struct extension length.
                      For flexible future expansion.

              (if ext_len >= 20, the following fields exist)

              name      = name of the dump.

    reserved2   = future expansion fields, that MUST be zero now.

-----------------------------------------------------------------------------
Finally, here is a collection of the most important rules you should obey
when handling MMD's:

    * ALWAYS USE POINTERS, NOT ABSOLUTE OFFSETS.

    * CHECK THAT A POINTER IS NONZERO BEFORE ACCESSING ANYTHING IT
      POINTS TO.

    * WHEN WRITING, SET UNDEFINED/RESERVED BITS AND BYTES TO ZERO.
      WHEN READING, MASK OUT UNDEFINED BITS, AND DON'T USE UNDEFINED
      FIELDS.

    * WHEN WRITING, ALWAYS ALIGN EVERYTHING TO EVEN BOUNDARIES.

    * WHEN WRITING, ALWAYS WRITE THE SONG STRUCTURE.

    * REMEMBER TO HANDLE ERROR SITUATIONS CORRECTLY (IN ALL PROGRAMS,
      NOT ONLY WHEN HANDLING MMDs ;^)

If  you  don't  understand  some  part  of this file completely, try saving a
module using MED, and then examine the file with a file editor.  This way you
can learn easily about the file format of MED/OctaMED.
