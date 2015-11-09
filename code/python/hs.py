'''def update (n):
    if (n % 2== 0):
        n = n//2
        return (n)
        print(n)
    else:
        n= 3*n +1
        return (n)
        print (n)
        
def baz (n):
    x= 1
    while (n != 1):
        n = update(n)
        return (n)
        x= x +1

def hs (n):
    if (n != 1):
        print (n)
        n = baz(n)
    else:
        print ("x") 
        return (None) '''
    
#new version

def hs (n):
        print (n)
       # n = baz(n)
        x= 1
        while (n != 1):
            if (n % 2== 0):
               n = n//2
               x= x+1
               print(n)
            else:
               n= 3*n +1
               print (n)
               x= x +1
        print (x) 
       
