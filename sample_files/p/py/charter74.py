#!/usr/bin/env python3

import binascii
import sys
from pandas import DataFrame
import pandas as pd
import numpy as np
from GLebcdic import Packed_Decimal_Clean
import re
path = sys.argv[1]

try:
    with open('widths.csv') as f:
        widths = [line.rstrip() for line in f]
        widths = [int(i)*2 for i in widths] 
        #print(widths)
except:
    print("ERROR - could not load widths")        
     
try:
    with open('colnames.csv') as f:
        colnames = [line.rstrip() for line in f]
except:
    print("ERROR - could not load columns")
       
df = pd.read_fwf(path, widths=widths,names=colnames, dtype="string", engine = 'c')
df.dropna(inplace=True)
df.replace(np.nan, 0, inplace=True)
print(df)
columns = list(df) 

ebcdic_cols=[*range(0,80)]
#packed_decimal_cols=[18,19,*range(21,385)]
for j in columns:  
    
    for i in range (0,len(df)):
        x = re.match("^0*$", str(df[j][i]))
        #print("Original value is " + str(df[j][i]))
        if not x:
            df[j][i]=bytes.fromhex(df[j][i]).decode('cp037')
        else:
            print("Value is zero")
            df[j][i]=df[j][i]
   
print(df) 
df.to_excel(r'CHARTER_1970.xlsx', index=False)
df.to_csv(r'CHARTER_1970.csv', index=False,sep = '|')
