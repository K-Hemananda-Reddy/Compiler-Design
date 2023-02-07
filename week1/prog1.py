f=open('AI.txt')
inp=f.read()
spaces=0
chars=0
newlines=0
comments=0
tabs=inp.count(' '*4)
for i in range(len(inp)):
    if inp[i]==' ':
        spaces+=1
    elif inp[i]=='\n':
        newlines+=1
    elif inp[i]=='#':
        comments+=1
        while(inp[i]!='\n'):
            i+=1
        
            
    else:
        chars+=1
print("No of characters = ",chars)
print("No of spaces = ",spaces-tabs*4)
print("No of tabs = ",tabs)
print("No of newlines = ",newlines)
print("No of comments = ",comments)
