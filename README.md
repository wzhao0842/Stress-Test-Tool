# Stress-Test-Tool (UNIX)
A effective way to stress test in Competitive Programming

## Intro
We have all being through failing of solutions. After hours of debugging, we get demotivated and tired at the end. So today I decide to create this ultimate tool.

Stress Test is a techinique that compares two files and their outputs - a file you wrote as solution and a file that guarantee is correct - 
By doing that, you can quickly find the input case to debug

## Settings 
".bash_aliases" file and "template" folder must both be place in home directory "~" (if you have ".bash_aliases" already, you can just add it in)
use command "source ~/.bash_aliases" to update

#### (Make sure the PATH variable includes your home directory)

## How to Use
1. running "stest <yourFile> <testFile>" - "<yourFile>" is the file name of your solution, "<testFile>" is the file name of the compared file 

(file names with the suffix) 

By running the aobve command, 5 files will be created:
mycode.cpp: your solution 
testcode.cpp: compared solution 
generator.cpp: data generator
comparator.cpp: compares the 2 files
data.txt: file that contains input 

2. change the generator file of however you want

3. compile the comparator file "g++ comparator.cpp -o comparator" 

4. run "./comparator"

## Attentions
if you change your original file, you have to rerun "stest <yourFile> <testFile>" to update the mycode and testcode files
