import sys

width = 8
total_size = width**2       

r = 15
g = 15
b = 15
linecount = 1

line = []

for k in range(0,total_size):
    line.append(f"{r:x}{g:x}{b:x}")

    g = g - 2
    if (g < 0): #end of line
        r = r -2
        g = 15

string = ' '.join(line)

with open('files\\gradient.coe', 'w') as f:
    sys.stdout = f
    print(f"memory_initialization_radix=16;\nmemory_initialization_vector={string};")

    
    