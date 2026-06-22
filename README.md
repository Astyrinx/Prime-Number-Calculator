# Prime-Number-Calculator
This is my first Delphi project where I used IF statements and For Loops!

## ( it seems as if the actual code for this project is the last file, 'frmPrimeNumberCalculator_u.pas'. That is the code I used for this project )

## Introduction
My dad gave me a challenge not too long ago to practice my coding and to develop my skills. The main point of this project was to learn IF statements and For Loops since I hadn't been taught these conditions in school yet. I was also eager to learn these conditions!! And what better way to learn then learn via a project! 

## Background
For this project I used the Trial Division method. This is where you divide the number you entered, by all integer values starting from 2 towards the sqaure root of said number. If the number you entered is divisable by any of these integers, then it is *not* a prime number. However, if it is not divisible by any of these integers then it *is* a prime number! 

When researching some ways to determine if a number is a Prime number, I decided that this was the easiest way to do so, and so I focussed on implementing this method into Delphi code.

## About the code

Since we want to determine if a number is a Prime number, you'd want to assume that the number is a Prime number at first and then disprove that fact. This is because a Prime number cannot be divided by any number except itself and one. So, when checking for those elments, once you see that the number *is* divisible by any other number except one and itself then we know it's a composite number. Thus, in the beginning of the code I declared the variable *bPrimeNum* as true, assuming that the number the user entered is a prime number.


Apart from the *bPrimeNum* variable, I have three other variables namely : *iValue*, *rNumVal* as well as *iNum*. The variables *iValue* and *rNumValue* are both variables 'holding' the number the user entered. However, *rNumValue* is going to be the square root of the number entered in our code. *iNum* is the range of numbers we'll be dividing *iValue* into, to determine if *iValue* is a prime number. 


In order to put the Trial Division Method into practice in Delphi I used a For Loop to create a range of numbers that has to be divided into *iValue*. Since a for loop doesn't allow real values (one of the things i learnt in this project :D ) I had to truncate the square root of said number to get an integer value. That's also why I have two variables holding the number the user entered.

Now comes the fun part: testing if a number is Prime or not! For this I used an IF statement. As I stated previously, we want to disprove our assumption and prove that the number is a composite number. Now what the program does is divide our *iValue* by the range of numbers inside *iNum* and gives us the decimal value of each answer. For this, I used the MOD function. As we go along the range, once we reach a number that divides evenly into the number we entered and it gives us a mod of 0, then the program sets our variable *bPrimeNum* to false! 

This is because even if we get other numbers later down the line that doesn't divide into *iValue* evenly, because we found a number that *did* divide evenly, it is automatically NOT a prime number! 

The rest was fairly easy. You'd just take the current value of *bPrimeNum* and if it's set to true, then we display a message in the memo declaring that the number you entered is a prime number. If *bPrimeNum* is set to false, then we display a message in the memo declaring that the number entered isn't a prime number!

## Conclusion
This was a fun project and I learnt quite a few new conditions that I can use in Delphi! It took me a while to figure out, partially because I was busy with school and exams, however in the end I figuired it out and I learnt a lot of new things alongside it!
