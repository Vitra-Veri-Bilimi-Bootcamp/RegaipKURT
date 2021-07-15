a = "ali*ata-bak.da%gel"
puncs = ["*","-",".","%"]
words = []

import re

x = ""
Flag = True
for i in a:
    if re.findall("[a-zA-Z]", i):
        if Flag == True:
            x = x + i.upper()
            Flag = False
        else:
            x = x + i.lower()
    else: 
        Flag = True
        
print(x)