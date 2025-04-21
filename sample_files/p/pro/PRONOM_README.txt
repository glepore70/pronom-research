Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

PRO file format

Applies to:
BG2, BG2: ToB, BGEE

General Description
This file format describes projectiles, and the files are referenced spells and projectile weapons. Projectile files can control:
Projectile graphics
Projectile speed
Projectile area of effect
Projectile sound
These files have constant length 256 bytes (no BAM), 512 bytes (single target), or 768 bytes (area of effect).

Detailed Description

Offset	Size (datatype)	Description
0x00000	4 (char array)	Signature ('PRO ')
0x00004	4 (char array)	Version ('V1.0')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/pro_v1.htm
