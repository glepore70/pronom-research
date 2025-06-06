#!/usr/bin/env python3

import binascii
import sys
from GLebcdic import Packed_Decimal_Clean, Zoned_Decimal
import codecs
import csv

f = open("DB2C_1970.csv", "w")
f.write("Record Number|Filler1|Date of latest reporting period|Ticketed origin - alpha code|Ticketed origin - numeric code|Ticketed destination - alpha code|Ticketed destination - numeric code|Number of outbound pass. - current qtr|Number of outbound pass. - 1st preced. qtr|Number of outbound pass. - 2nd preced. qtr|Number of outbound pass. - 3rd preced. qtr|Number of outbound pass. - 4th preced. qtr|Number of outbound pass. - 5th preced. qtr|Number of outbound pass. - 6th preced. qtr|Number of outbound pass. - 7th preced. qtr|Number of inbound pass. - current qtr|Number of inbound pass. - 1st preced. qtr|Number of inbound pass. - 2nd preced. qtr|Number of inbound pass. - 3rd preced. qtr|Number of inbound pass. - 4th preced. qtr|Number of inbound pass. - 5th preced. qtr|Number of inbound pass. - 6th preced. qtr|Number of inbound pass. - 7th preced. qtr|Number of outbound pass., dom. portion of int'l segment - current qtr|Number of outbound pass., dom. portion of int'l segment - 1st preced. qtr|Number of outbound pass., dom. portion of int'l segment - 2nd preced. qtr|Number of outbound pass., dom. portion of int'l segment - 3rd preced. qtr|Number of outbound pass., dom. portion of int'l segment - 4th preced. qtr|Number of outbound pass., dom. portion of int'l segment - 5th preced. qtr|Number of outbound pass., dom. portion of int'l segment - 6th preced. qtr|Number of outbound pass., dom. portion of int'l segment - 7th preced. qtr|Number of inbound pass., dom. portion of int'l segment - current qtr|Number of inbound pass., dom. portion of int'l segment - 1st preced. qtr|Number of inbound pass., dom. portion of int'l segment - 2nd preced. qtr|Number of inbound pass., dom. portion of int'l segment - 3rd preced. qtr|Number of inbound pass., dom. portion of int'l segment - 4th preced. qtr|Number of inbound pass., dom. portion of int'l segment - 5th preced. qtr|Number of inbound pass., dom. portion of int'l segment - 6th preced. qtr|Number of inbound pass., dom. portion of int'l segment - 7th preced. qtr|Filler2|Directional origin-alpha code (lst city)|Filler3|Directional origin-numeric code|Directional destin.-alpha code (last city)|Filler4|Directional destin.numeric code|Online/Interline carrier code|First carrier|Filler5|First Segment Distance|City Alpha Code1|Filler6|City Numeric Code1|Carrier Alpha Code1|Filler7|Segment Distance1|City Alpha Code2|Filler8|City Numeric Code2|Carrier Alpha Code2|Filler9|Segment Distance2|City Alpha Code3|Filler10|City Numeric Code3|Carrier Alpha Code3|Filler11|Segment Distance3|City Alpha Code4|Filler12|City Numeric Code4|Carrier Alpha Code4|Filler13|Segment Distance4|City Alpha Code5|Filler14|City Numeric Code5|Carrier Alpha Code5|Filler15|Segment Distance5|City Alpha Code6|Filler16|City Numeric Code6|Carrier Alpha Code6|Filler17|Segment Distance6|City Alpha Code7|Filler18|City Numeric Code7|Carrier Alpha Code7|Filler19|Segment Distance7|City Alpha Code8|Filler20|City Numeric Code8|Carrier Alpha Code8|Filler21|Segment Distance8|City Alpha Code9|Filler22|City Numeric Code9|Carrier Alpha Code9|Filler23|Segment Distance9|City Alpha Code10|Filler24|City Numeric Code10|Carrier Alpha Code10|Filler25|Segment Distance10|City Alpha Code11|Filler26|City Numeric Code11|Carrier Alpha Code11|Filler27|Segment Distance11|City Alpha Code12|Filler28|City Numeric Code12|Carrier Alpha Code12|Filler29|Segment Distance12|City Alpha Code13|Filler30|City Numeric Code13|Carrier Alpha Code13|Filler31|Segment Distance13|City Alpha Code14|Filler32|City Numeric Code14|Carrier Alpha Code14|Filler33|Segment Distance14|City Alpha Code15|Filler34|City Numeric Code15|Carrier Alpha Code15|Filler35|Segment Distance15|City Alpha Code16|Filler36|City Numeric Code16|Carrier Alpha Code16|Filler37|Segment Distance16|City Alpha Code17|Filler38|City Numeric Code17|Carrier Alpha Code17|Filler39|Segment Distance17|City Alpha Code18|Filler40|City Numeric Code18|Carrier Alpha Code18|Filler41|Segment Distance18|City Alpha Code19|Filler42|City Numeric Code19|Carrier Alpha Code19|Filler43|Segment Distance19|City Alpha Code20|Filler44|City Numeric Code20|Carrier Alpha Code20|Filler45|Segment Distance20|City Alpha Code21|Filler46|City Numeric Code21|Carrier Alpha Code21|Filler47|Segment Distance21|City Alpha Code22|Filler48|City Numeric Code22|Carrier Alpha Code22|Filler49|Segment Distance22|City Alpha Code23|Filler50|City Numeric Code23|Carrier Alpha Code23|Filler51|Segment Distance23\n")
path = sys.argv[1]
file1 = open(path, 'r')
Lines = file1.readlines()
count = 0
for line in Lines:
    #f.write("\nLine length is " + str(len(line))+"\n")
    count += 1
    RL=line[0:4]
    f.write(str(RL))
    f.write("|")
    Filler1=line[4:8]
    f.write(str(Filler1))
    f.write("|")
    Date=line[8:12]
    f.write(str(Packed_Decimal_Clean(Date)))
    f.write("|")
    TOA=bytes.fromhex(line[12:18]).decode('cp037')
    f.write(str(TOA))
    f.write("|")
    TON=line[18:28]
    if "4040404040" not in TON:
        f.write(str(Packed_Decimal_Clean(TON)))
        f.write("|")
    else:
        f.write("  |")
    TDA=bytes.fromhex(line[28:34]).decode('cp037')
    f.write(str(TDA))
    f.write("|")
    TDN=line[34:44]
    if "4040404040" not in TDN:
        f.write(str(Packed_Decimal_Clean(TDN)))
        f.write("|")
    else:
        f.write("  |")
    NOC=line[44:52]
    f.write(str(Packed_Decimal_Clean(NOC)))
    f.write("|")
    NO1=line[52:60]
    f.write(str(Packed_Decimal_Clean(NO1)))
    f.write("|")
    NO2=line[60:68]
    f.write(str(Packed_Decimal_Clean(NO2)))
    f.write("|")
    NO3=line[68:76]
    f.write(str(Packed_Decimal_Clean(NO3)))
    f.write("|")
    NO4=line[76:84]
    f.write(str(Packed_Decimal_Clean(NO4)))
    f.write("|")
    NO5=line[84:92]
    f.write(str(Packed_Decimal_Clean(NO5)))
    f.write("|")
    NO6=line[92:100]
    f.write(str(Packed_Decimal_Clean(NO6)))
    f.write("|")
    NO7=line[100:108]
    f.write(str(Packed_Decimal_Clean(NO7)))
    f.write("|")
    NIC=line[108:116]
    f.write(str(Packed_Decimal_Clean(NIC)))
    f.write("|")
    NI1=line[116:124]
    f.write(str(Packed_Decimal_Clean(NI1)))
    f.write("|")
    NI2=line[124:132]
    f.write(str(Packed_Decimal_Clean(NI2)))
    f.write("|")
    NI3=line[132:140]
    f.write(str(Packed_Decimal_Clean(NI3)))
    f.write("|")
    NI4=line[140:148]
    f.write(str(Packed_Decimal_Clean(NI4)))
    f.write("|")
    NI5=line[148:156]
    f.write(str(Packed_Decimal_Clean(NI5)))
    f.write("|")
    NI6=line[156:164]
    f.write(str(Packed_Decimal_Clean(NI6)))
    f.write("|")
    NI7=line[164:172]
    f.write(str(Packed_Decimal_Clean(NI7)))
    f.write("|")
    NODC=line[172:180]
    f.write(str(Packed_Decimal_Clean(NODC)))
    f.write("|")
    
    NOD1=line[180:188]
    f.write(str(Packed_Decimal_Clean(NOD1)))
    f.write("|")
    NOD2=line[188:196]
    f.write(str(Packed_Decimal_Clean(NOD2)))
    f.write("|")
    NOD3=line[196:204]
    f.write(str(Packed_Decimal_Clean(NOD3)))
    f.write("|")
    NOD4=line[204:212]
    f.write(str(Packed_Decimal_Clean(NOD4)))
    f.write("|")
    NOD5=line[212:220]
    f.write(str(Packed_Decimal_Clean(NOD5)))
    f.write("|")
    NOD6=line[220:228]
    f.write(str(Packed_Decimal_Clean(NOD6)))
    f.write("|")
    NOD7=line[228:236]
    f.write(str(Packed_Decimal_Clean(NOD7)))
    f.write("|")
    
    
    NIDC=line[236:244]
    f.write(str(Packed_Decimal_Clean(NIDC)))
    f.write("|")
    NID1=line[244:252]
    f.write(str(Packed_Decimal_Clean(NID1)))
    f.write("|")
    NID2=line[252:260]
    f.write(str(Packed_Decimal_Clean(NID2)))
    f.write("|")
    NID3=line[260:268]
    f.write(str(Packed_Decimal_Clean(NID3)))
    f.write("|")
    NID4=line[268:276]
    f.write(str(Packed_Decimal_Clean(NID4)))
    f.write("|")
    NID5=line[276:284]
    f.write(str(Packed_Decimal_Clean(NID5)))
    f.write("|")
    NID6=line[284:292]
    f.write(str(Packed_Decimal_Clean(NID6)))
    f.write("|")
    NID7=line[292:300]
    #print("NID7 is " + str(NID7))
    f.write(str(Packed_Decimal_Clean(NID7)))
    f.write("|")
    
    Filler2=bytes.fromhex(line[300:302]).decode('cp037')
    #print("filler2 is " + str(bytes.fromhex(line[300:302])))
    f.write(str((Filler2)))
    f.write("|")
    
    DOA1=bytes.fromhex(line[302:308]).decode('cp037')
    #print("DOA1 is " + str(DOA1))
    f.write(str((DOA1)))
    f.write("|")
    
    Filler3=bytes.fromhex(line[308:310]).decode('cp037')
    f.write(str((Filler3)))
    f.write("|")
    
    DONC=line[310:320]
    f.write(str(Packed_Decimal_Clean(DONC)))
    f.write("|")
    
    DDA1=bytes.fromhex(line[320:326]).decode('cp037')
    f.write(str(DDA1))
    f.write("|")
    
    Filler4=bytes.fromhex(line[326:328]).decode('cp037')
    f.write(str((Filler4)))
    f.write("|")
    
    DDNC=line[328:338]
    f.write(str(Packed_Decimal_Clean(DDNC)))
    f.write("|")
    
    OICC=bytes.fromhex(line[338:342]).decode('cp037')
    f.write(str((OICC)))
    f.write("|")
    
    FC=bytes.fromhex(line[342:346]).decode('cp037')
    f.write(str((FC)))
    f.write("|")
    
    Filler5=line[346:350]
    f.write(str((Packed_Decimal_Clean(Filler5))))
    f.write("|")
    
    FSD=line[350:356]
    #print(FSD)
    if "40404040" not in FSD:
        f.write(str(Packed_Decimal_Clean(FSD)))
        f.write("|")
    else:
        f.write("  |")
    
    if len(line)>357:
        
        if line[356:358] != "5e":
            #f.write("FOUND FIRST SECTION")
            CAC=bytes.fromhex(line[356:362]).decode('cp037')
            #print(CAC)
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            
            Filler6=bytes.fromhex(line[362:364]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            
            CNC=line[364:374]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            
            CCAC=bytes.fromhex(line[374:378]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            
            Filler7=bytes.fromhex(line[378:382]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            
            SD=line[382:388]
            #print("SD is " + str(SD))
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
        
    if len(line)>389:
        
        if line[388:390] != "5e":
            #f.write("FOUND SECOND SECTION")
            #f.write(line[388:394])
            CAC=bytes.fromhex(line[388:394]).decode('cp037')
            #print("2nd cac is " + str(CAC))
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            
            Filler6=bytes.fromhex(line[394:396]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            
            CNC=line[396:406]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            
            CCAC=bytes.fromhex(line[406:410]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            
            Filler7=bytes.fromhex(line[410:414]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            
            SD=line[414:420]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |") 
        
    if len(line)>421:
        
        if (line[420:422]) != "5e":
            #f.write("FOUND THIRD SECTION")
            #6
            CAC=bytes.fromhex(line[420:426]).decode('cp037')
            #f.write(CAC)
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            #2
            Filler6=bytes.fromhex(line[426:428]).decode('cp037')
            #f.write(Filler6)
            f.write(str((Filler6)))
            f.write("|")
            #10
            CNC=line[428:438]
            #f.write(CNC)
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            #4
            CCAC=bytes.fromhex(line[438:442]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            #4
            Filler7=bytes.fromhex(line[442:446]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            #6
            SD=line[446:452]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
        
    if len(line)>453:
        
        if (line[452:454]) != "5e":
            #f.write("FOUND FOURTH SECTION")
            #6
            CAC=bytes.fromhex(line[452:458]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            #2
            Filler6=bytes.fromhex(line[458:460]).decode('cp037')
            #f.write(Filler6)
            f.write(str((Filler6)))
            f.write("|")
            #10
            CNC=line[460:470]
            #f.write(CNC)
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            #4
            CCAC=bytes.fromhex(line[470:474]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            #4
            Filler7=bytes.fromhex(line[474:478]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            #6
            SD=line[478:484]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")    
            
    if len(line)>485:
            
        if (line[484:486]) != "5e":
            #f.write("FOUND FIFTH SECTION")
            start=484
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
            
    if len(line)>517:
        start=516
        if (line[start:start+2]) != "5e":
            #f.write("FOUND SIXTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
            
    if len(line)>549:
        start=548
        if (line[start:start+2]) != "5e":
            #f.write("FOUND SEVENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
            
    if len(line)>613:
        start=612
        if (line[start:start+2]) != "5e":
            #f.write("FOUND EIGHTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")          
            
    if len(line)>645:
        start=644
        if (line[start:start+2]) != "5e":
            #f.write("FOUND NINTH SECTION")
            f.write(line[start:start+6])
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
            
    if len(line)>677:
        start=676
        if (line[start:start+2]) != "5e":
            #f.write("FOUND TENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
                
    if len(line)>709:
        start=708
        if (line[start:start+2]) != "5e":
            #f.write("FOUND TENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")

    if len(line)>741:
        start=740
        if (line[start:start+2]) != "5e":
            #f.write("FOUND ELEVENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")

    if len(line)>773:
        start=772
        if (line[start:start+2]) != "5e":
            #f.write("FOUND TWELFTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
            
    if len(line)>805:
        start=804
        if (line[start:start+2]) != "5e":
            #f.write("FOUND THIRTEENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")

    if len(line)>837:
        start=836
        if (line[start:start+2]) != "5e":
            #f.write("FOUND FOURTEENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
            
    if len(line)>869:
        start=868
        if (line[start:start+2]) != "5e":
            #f.write("FOUND FIFTEENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")


    if len(line)>901:
        start=900
        if (line[start:start+2]) != "5e":
            #f.write("FOUND SIXTEENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")

    if len(line)>933:
        start=932
        if (line[start:start+2]) != "5e":
            #f.write("FOUND SEVENTEENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")


    if len(line)>965:
        start=964
        if (line[start:start+2]) != "5e":
            #f.write("FOUND EIGHTEENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")


    if len(line)>997:
        start=996
        if (line[start:start+2]) != "5e":
            #f.write("FOUND NINETEENTH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
            
    if len(line)>1029:
        start=1028
        if (line[start:start+2]) != "5e":
            #f.write("FOUND TWENTIETH SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")

    if len(line)>1061:
        start=1060
        if (line[start:start+2]) != "5e":
            #f.write("FOUND TWENTY-FIRST SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")

    if len(line)>1093:
        start=1092
        if (line[start:start+2]) != "5e":
            #f.write("FOUND TWENTY-SECOND SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            SD=line[start+26:start+32]
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
            
    if len(line)>1125:
        start=1124
        if (line[start:start+2]) != "5e":
            #f.write("FOUND TWENTY-THIRD SECTION")
            CAC=bytes.fromhex(line[start:start+6]).decode('cp037')
            if "404040404040" not in CAC:
                f.write(str(CAC))
                f.write("|")
            else:
                f.write("  |")
            Filler6=bytes.fromhex(line[start+6:start+8]).decode('cp037')
            f.write(str((Filler6)))
            f.write("|")
            CNC=line[start+8:start+18]
            f.write(str(Packed_Decimal_Clean(CNC)))
            f.write("|")
            CCAC=bytes.fromhex(line[start+18:start+22]).decode('cp037')
            f.write(str((CCAC)))
            f.write("|")
            Filler7=bytes.fromhex(line[start+22:start+26]).decode('cp037')
            f.write(str((Filler7)))
            f.write("|")
            if "40404040" not in SD:
                f.write(str(Packed_Decimal_Clean(SD)))
                f.write("|")
            else:
                f.write("  |")
                
    f.write("\n")

f.close()

        
    
    
