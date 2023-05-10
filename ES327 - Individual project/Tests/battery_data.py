import csv

# with open('battery logs\\230130.csv', 'a') as file:
#     reader = csv.reader(x.replace('\0', '') for x in file)




def fix_nulls(s):
    for line in s:
        yield line.replace('\0', ' ')

r = csv.reader(fix_nulls(open('battery logs\\230130.csv')))

if '\0' in open('battery logs\\230130.csv').read():
    print("nulls detected")
else:
    print("clear")