DOOM IWAD
The acronym IWAD is generally interpreted as "internal WAD"[1] and refers to a WAD file which contains all of the external data for a complete game. In order to be identified as IWAD, a file must contain the "IWAD" (49 57 41 44) magic identifier as the first four bytes in its header. An IWAD file is required for execution of any of the stock Doom engine games. This is in contrast to PWADs, which are "patch" WADs intended to replace or augment the content found in the IWAD.

https://doomwiki.org/wiki/IWAD


CHAPTER [2]: Basics
There are two types of "wad" files. The original DOOM.WAD file is an "IWAD", or "Internal wad", meaning it contains all of the data necessary to play. The other type is the "PWAD" file, "Patch wad", an external file which has the same structure, but with far fewer entries in the directory (explained below). The data in a pwad is substituted for the original data in the DOOM.WAD, thus allowing for much easier distribution of new levels. Only those resources listed in the pwad's directory are changed, everything else stays the same.
A typical pwad might contain new data for a single level, in which case in would contain the 11 entries necessary to define the level. Pwad files need to have the extension .WAD, and the filename needs to be at least four characters: X.WAD won't work, but rename it XMEN.WAD, and it will work. Most of the levels available now are called something like E2L4BOB.WAD, meaning episode 2, level 4, by "Bob". I think a better scheme is the one just starting to be used now, two digits for the episode and level, then up to six letters for the level's name, or its creator's name. For example, if Neil Peart were to create a new level 6 for episode 3, he might call it 36NEILP.WAD.

To use this level instead of the original e3m6 level, a player would type DOOM -FILE 36NEILP.WAD at the command line, along with any other parameters. More than one external file can be added at the same time, thus in general:

DOOM -FILE [pwad_filename] [pwad_filename] [pwad_filename] ...

When the game loads, a "modified game" message will appear if there are any pwads involved, reminding the player that id Software will not give technical support or answer questions regarding modified levels.

A pwad file may contain more than one level or parts of levels, in fact there is apparently no limit to how many entries may be in a pwad. The original doom levels are pretty complicated, and they are from 50-200 kilobytes in size, uncompressed. Simple prototype levels are just a few k.

The first twelve bytes of a wad file are as follows:

Bytes 0 to 3    must contain the ASCII letters "IWAD" or "PWAD"
Bytes 4 to 7    contain a long integer which is the number of entries in the
                "directory"
Bytes 8 to 11   contain a pointer to the first byte of the "directory"
Bytes 12 to the start of the directory contain resource data. The directory referred to is a list, located at the end of the wad file, which contains the pointers, lengths, and names of all the resources in the wad file. The resources in the wad include item pictures, monster's pictures for animation, wall patches, floor and ceiling textures, songs, sound effects, map data, and many others.
As an example, the first 12 bytes of the DOOM.WAD file might be "49 57 41 44 d4 05 00 00 c9 fd 6c 00" (in hexadecimal). This is "IWAD", then 5d4 hex (=1492 decimal) for the number of directory entries, then 6cfdc9 hex (=7142857 decimal) for the first byte of the directory.

Each directory entry is 16 bytes long, arranged this way:

First four bytes:       pointer to start of resource (a long integer)
Next four bytes:        length of resource (another long integer)
Last eight bytes:       name of resource, in ASCII letters, ending with
                        00s if less than eight bytes.
                        
https://www.gamers.org/docs/FAQ/DOOM.FAQ.Specs.Chapters.2.html
