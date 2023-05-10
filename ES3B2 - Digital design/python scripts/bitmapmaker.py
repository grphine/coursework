import sys
r = 15
g = 15
b = 15
pwr = 6
with open('files\\filename.txt', 'w') as f:
    sys.stdout = f
    print("initial begin")
    for count in range(0,2**pwr):  
        print(f"\tcolourspace[{count}] = 12'h{r:x}{g:x}{b:x};")

        g = g - 2
        if (g < 0): #end of line
            r = r -2
            g = 15
    print("end")

#
# for c = 0 to F
#   draw F 0 0
#   draw F 0 1