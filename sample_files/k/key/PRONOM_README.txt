Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

KEY file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2

General Description
This file format acts as a central reference point to locate files required by the game (in a BIFF file on a CD or in the override directory). The key file also maintains a mapping from an 8 byte resource name (refref) to a 32 byte ID (using the lowest 12 bits to identify a resource). There is generally only one key file with each game (chitin.key).

General Description
Overall structure:
Header
Bif indices
Strings referenced by Bif indices
Resource indices

KEY V1 Header

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('KEY ')
0x0004	4 (char array)	Version ('V1  ')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/key_v1.htm
