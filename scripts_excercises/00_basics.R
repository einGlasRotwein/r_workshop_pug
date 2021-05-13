
#####################
#### BASICS IN R ####
#####################

#### 1 THE CONSOLE ####

# 1.1) Type a number into the console. What happens?

# 1.2) Try a decimal. How do you make that work?

# 1.3) Type some mathematical statement into the console, e.g. 3 + 5 or 2 - 10. What happens?

# 1.4) How do you multiply numbers? You do you divide them?

# 1.5) What does : do? (e.g. 1:4)

# 1.6) Try typing a word (e.g. test). What happens? What if you wrap the word in quotation marks
#      (e.g. "test")?

#### 2 DATA TYPES ####

# Working in the console is a bit messy, because you can't save it anywhere. We'll continue
# in this script from now on.

# There are several "data types" in R - some of which you've encountered already. There is the
# type numeric, which can be any number like 1, 2, 423351 - or decimals like -1.7. Technically,
# we differentiate between integers (whole numbers) and doubles ("floating point numbers" - decimals,
# even though the decimals might not be visible).
# But this doesn't concern us today.
# There are characters, which is basically anything involving - well, characters. And there's 
# logicals, which can either
# be TRUE or FALSE. Find out how these data types work in the exercises.

# You can find out what data type something is by using the function typeof(). It works
# like this: (Hit cntrl + return in the next line to print the result in the console!)
typeof(3.2)

# This should return "double". Now try it yourself:

# 2.1) What data type is 2? Think first, then try typeof(). Did you expect this result?

# 2.2) What data type is "R"? What is "I love R"?

# 2.3) What data type is TRUE?

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

#### 4 VECTORS ####

# As you can imagine, this is not terribly helpful for data analysis. We need something bigger.
# One of R's greatest strengths are vectors, which look like this:

c(1, 4, 9, 12, 9)

# 4.1) What happens if you leave out the c or the parentheses?

# 4.2) Try to mix data types. What about full numbers an decimal numbers? What if you add
#      characters?

# Vectors can be used to calculate stuff, too! Try this:
c(2, 4, 6) + c(1, 2, 3)

# 4.3) What happened?

# 4.4) Based on what you just saw, what do you think will happen here:
c(2, 4, 6) + 2

# 4.5) What happens here?
c(1, 2, 3, 4) - c(1, 2)

# 4.6) What is the problem here?
c(1, 2, 3) + c(1, 2)

# 4.7) Try multiplication and division.

# 4.8) Do you have an idea how you could combine two vectors?

#### 5 VARIABLES ####

# This is still messy. We want to save things an keep them for longer, and we don't want to
# type in long vectors every time. For this purpose, we use variables. Variables are like
# little containers that can hold literally anything. Single numbers, whole vectors, even whole
# data sets!
# When we store something in a variable, we say we "assign" something to that variable. It works
# like this:

single_number <- 7

# ALWAYS USE VARIABLE NAMES THAT TELL YOU WHAT THAT VARIABLE CONTAINS!!!

# 5.1) Type single_number into the console.

# 5.2) Run the following code. What will happen now if you type single_number into the console?
single_number <- 2

# 5.3) Assign a vector to a variable.

# 5.4) Examine what happens here. What is the result? What do you think will single_number
#      contain now? 2 or 6?
single_number + 4

# 5.5) What do you observe here?
number2 <- 2
number6 <- 6

number2 + number6

multiplied <- number2 * number6
multiplied

# 5.6) What happens here?
c(number2, number6, number2, number2, number2 + number6)

#### PUSH TO GITHUB ####

# Now that we finished these exercises, we want to push what we did to GitHub so it is backed up
# and we can "time travel" later.
