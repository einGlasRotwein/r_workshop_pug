
#####################
#### BASICS IN R ####
#####################

#### 1 THE CONSOLE ####

# 1.1) Type a number into the console. What happens?

# 1.2) Try a decimal.

# 1.3) Type some mathematical statement into the console, e.g. 3 + 5 or 2 - 10. What happens?

# 1.4) How do you multiply numbers? You do you divide them?

# 1.5) What does : do? (e.g. 1:4)

# 1.6) Try typing a word (e.g. test). What happens?

# Working in the console is a bit messy, because you can't save it anywhere. However, we can also
# code inside this script and then run it - the output will appear in the console.
# We don't need to run the whole script every time - we can also run individual lines by
# pressing ctrl + return.
# Try to run the following line using ctrl + return:
41 + 1

#### 2 DATA TYPES ####

# There are several "data types" in R - some of which you've encountered already. There is the
# type numeric, which can be any number like 1, 2, 423351 - or decimals like -1.7. Technically,
# we differentiate between integers (whole numbers) and doubles ("floating point numbers" - decimals,
# even though the decimals might not be visible).
# But this doesn't concern us today.
# There are characters, which is basically anything involving - well, characters. And there's 
# logicals, which can either be TRUE or FALSE. Find out how these data types work in the exercises.

# You can find out what data type something is by using the function typeof(). It works
# like this:
typeof(3.2)

# This should return "double". Now try it yourself - type the answers below the questions
# and run your code using ctrl + return!

# 2.1) What data type is 2? Think first, then try typeof(). Did you expect this result?

# 2.2) What data type is 1:4?

# 2.3) What data type is "R"? What is "I love R"?

# 2.4) What data type is TRUE? What data type is FALSE? (Don't use quotation marks around these!)

#### 3 LOGICALS ####

# Why is there an entire data type for TRUE and FALSE? How do you get these values "in the
# wild?

# 3.1) Type 12 > 3 into your console. Then, type 12 < 3.

# 3.1) Try 12 == 12. And now 12 == 13. What does == do?

# 3.2) Try out: FALSE & FALSE, then FALSE & TRUE and finally, TRUE & TRUE. What happens?

# 3.3) Try the same as above, but replace & with | (alt gr + <). Do you know what do & and | do?

# 3.4) What do you think will be the result of 4 < 3 | 4 == 4? What is 4 < 3 & 4 == 4?

# 3.5) What is "cat" != "dog"?

# 3.6) What is "cat" > "dog"? What about other words? Can you find a pattern?

# 3.7) By the way, did you know that logicals have numeric representations? Try TRUE + 1.
#      Then try FALSE + 1. What is the numeric value of TRUE? What is the numeric value of FALSE?

#### 4 VARIABLES ####

# This is all fun and games, but we actually want to save things an keep them for longer. 
# For this purpose, we use variables. Variables are like little containers that can hold
# literally anything, from single numbers to whole data sets!
# When we store something in a variable, we say we "assign" something to that variable. It works
# like this:

single_number <- 7

# ALWAYS USE VARIABLE NAMES THAT TELL YOU WHAT THAT VARIABLE CONTAINS!!!

# 4.1) Type single_number into the console and hit return.

# 4.2) Run the following code. What will happen now if you type single_number into the console?
single_number <- 2

# 4.3) Assign something to a variable with a name of your choice.

# 4.4) Examine what happens here. What is the result? What do you think will single_number
#      contain now? 2 or 6?
single_number + 4

# 4.5) What do you observe here?
number2 <- 2
number6 <- 6

number2 + number6

multiplied <- number2 * number6
multiplied

#### THIS IS A GIT HUB CHECKPOINT ####

# Now that we finished these exercises, we want to push what we did to GitHub so it is backed up
# and we can "time travel" later.
