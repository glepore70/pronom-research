Boom Tracker v4.0, by CUD (Creative Underground Department)

CFF (CUD-FM-File) format:

 Uncomprimized header (32 bytes):
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 0-0Fh      16        "<CUD-FM-File>",26,CHECKWORD:56846
 10h        1         Format version
 11h        2         WORD of filesize (without 32b header)
 13h        1         =1 -> comprimized data otherwise raw-data
 14h        12        reserved

 Raw-data (uncomprimized):
 ~~~~~~~~~~~~~~~~~~~~~~~~~
 0-5F3h     47*32     Instruments(12b)+IName(20b)
 600h       1         No. of Patterns
 601h-61Fh  31        ASCII: "CUD-FM-File - SEND A POSTCARD -"
 620h-633h  21        songwriter
 634h-647h  21        songname
 648h-688h  65        pattern order (last is ever FFh)
 689h-%%%             Patterns
 %%%                  Song name     20     Bytes
                      Song writer   20     Bytes

                      
http://fileformats.archiveteam.org/wiki/Boom_Tracker_v4.0_module
