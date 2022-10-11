
for i in range(int( input())):
    n = int(input())
    e  = input()
    
    c = 0
    
    x = int(e,2)

   

    j=1
    d = 0
    while (d<x and j<x):
        d = x^int((x/(2**j)))
        c=j
        j+=1
        
        
    print(c)
            
