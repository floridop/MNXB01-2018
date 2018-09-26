--------------------------------------------------------
# MNXB01-2018-HW3
--------------------------------------------------------
### Author: Florido Paganelli florido.paganelli@hep.lu.se
###         Lund University
--------------------------------------------------------

## Description of the problem

I've discovered that on the internet somebody wrote an API (Advanced
Programming Interface) to download a set of fortunes, small messages with some 
sort of wisdom. You can see it at

> <http://fortunecookieapi.herokuapp.com/>

I'd like to have a bash script that downloads these fortune messages
and shows me a random one every time I run the command.

The command should be called  
> `fortuneteller.sh`

An example output of the command is in the file
   `result/simple_call_output`

To help debugging, the command should accept 
an input parameter `--printinfo`:

> `./fortuneteller.sh --printinfo`

That shows all intermediate files generated in the process.

An example of the output is in the file 
   `result/call_with_printinfo_output`

The code has a function to help cleaning up temporary files, that will
ask the user if it is ok to delete files in the tmp folder,
triggered by the option --cleanup

> `./fortuneteller.sh --cleanup`

An example output triggered by this option is in the file
   result/call_with_cleanup_output

## Homework 3

My suggestions how to implement the script are in the 
`fortuneteller.sh.pseudocode` file. 
Each of them is worth a certain number of points for the Homework. 
You must follow them to get the points, as they introduce you to
various useful bash commands and some mind-bending reasoning that is
quite common in bash.

I also placed a copy of the output I'd like to see from the script in
the folder

>  `./result`

In the homework you will be asked to download the data using wget from 
the website mentioned at the beginning of this document and in the 
pseudocode file, and put it in a temporary folder.

For your convenience, I saved the temporary files folder and its
content `fortunes` and `fortunes_pp` in the `data` folder, so that you 
can compare what these files should look like after saving them as 
requested in the homework.

You can use two nice tools to compare the content of your files with 
mines: diff (text) and meld (graphical).
More about those:  

   - *diff* - <https://www.computerhope.com/unix/udiff.htm>  
   - *meld* - <http://meldmerge.org/>  

### Get started 

1. Get the pseudocode and example files from my repository in git:  
```
   git clone https://github.com/floridop/MNXB01-2018.git
```
2. Read the problem specification in this file
   `./MNXB01-2018/floridop/HW3/README.md`

3. Examine the pseudocode file:
   `./MNXB01-2018/floridop/HW3/fortuneteller.sh.pseudocode`

4. Rename the file above to `fortuneteller.sh` . 
5. Complete the pseudocode file with the requested lines of code. 
6. Test that it does what is requested! The final outputs should look 
   like the files in the result folder in the github repository:  
   `./MNXB01-2018/floridop/HW3/result`  

7. Commit the code you created to github following the instructions that
   will be given in the git tutorial.

8. Send me a link to your fork repository on Live at Lund.

### 


Good luck!
