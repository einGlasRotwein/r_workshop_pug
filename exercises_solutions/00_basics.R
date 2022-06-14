
## BASICS IN R -----------------------------------------------------------------

## 1 THE CONSOLE ---------------------------------------------------------------

# 1.1) Type a number into the console and hit return. What happens?

# 1.2) Try a decimal.

# 1.3) Try some maths, e.g. 3 + 5 or 2 - 10. What happens?

# 1.4) How do you multiply numbers? How do you divide them?

# 1.5) What does : do? (e.g. 1:4)

# 1.6) Try typing a word (e.g. test). What happens?

# Working in the console is a bit messy, because you can't save it anywhere. 
# However, we can also code inside this script (like this one) and then run it 
# - the output will appear in the console. We don't need to run the whole 
# script every time - we can also run individual lines by pressing ctrl + 
# return. This command will run the line where your cursor is currently placed
# (or the next line after your cursor)-

# Try to run the following line using ctrl + return:
41 + 1

# PS: You probably noticed that there is a # in front of each line. Everything 
# start starts with a # is called a "comment". If I would leave my explanations 
# uncommented, R would try to interpret the text as code (which doesn't make 
# sense). Note how plain text results in an error, because R doesn't know what 
# to do with it.

This creates an error when you try to run it.

# So, commenting out a line prevents it from being run. If you want to comment
# out larger chunks of text (or code), highlight everything  you want to comment
# out, and hit ctrl + shift + c. The same shortcut uncomments multiple lines at
# once.
# Usually, there won't be as many comments in a script as in this one, but
# during this workshop, I will use comments a lot to explain things. If you want
# to make some notes during the course, you should use comments, too!

## 2 DATA TYPES ----------------------------------------------------------------

# There are several "data types" in R - some of which you've encountered 
# already. There is the type numeric, which can be any number like 1, 2, 
# 423351 - or decimals like -1.7. Technically, we differentiate between 
# integers (whole numbers) and doubles ("floating point numbers" - decimals,
# even though the decimals might not be visible).
# But this doesn't concern us for now.
# There are characters, which is basically anything involving - well, 
# characters. And there are logicals, which can either be TRUE or FALSE. Find 
# out how these data types work in the exercises.

## OPTIONAL --------------------------------------------------------------------

# These exercises are optional - they're not part of the workshop. Run them if 
# you have some spare time during the course, or later at home if you want to 
# find out more about data types.

# You can find out what data type something is by using the function typeof(). 
# It works like this:
typeof(3.2)

# This should return "double". Now try it yourself - type the answers below the 
# questions and run your code using ctrl + return!

# 2.1) What data type is 2? Think first, then try typeof(). Did you expect this 
#      result?

# 2.2) What data type is 1:4?

# 2.3) What data type is "R"? What is "I love R"?

# 2.4) What data type is TRUE? What data type is FALSE? (Don't use quotation 
#      marks around these!)

## 3 LOGICALS ------------------------------------------------------------------

# There is another data type: Logicals. They are really important for our code, 
# so let's find out how they work. Logicals can only be TRUE or FALSE (without
# quotation marks) - why do we need an entire data type for just two words? 
# Let's take a look at how we can "produce" logicals.

# 3.1) Run 12 > 3.
12 > 3

# 3.1) Run 12 == 12. What does it do? What happens if you try 12 = 12 instead?
12 == 12
12 = 12

# 3.2) What is "cat" != "dog"?
"cat" != "dog"
!12 == 12

# 3.3) Try out: FALSE & FALSE, then FALSE & TRUE and finally, TRUE & TRUE. 
#      What happens?
FALSE & FALSE
FALSE & TRUE
TRUE & TRUE

# 3.4) Try the same as above, but replace & with | (alt gr + <). What does | do?
FALSE | FALSE
FALSE | TRUE
TRUE | TRUE

## OPTIONAL --------------------------------------------------------------------

# These exercises are optional - they're not part of the workshop. Run them if 
# you have some spare time during the course, or later at home if you want to 
# find out more about logicals.

# 3.5) What do you think will be the result of 4 < 3 | 4 == 4? What is
#      4 < 3 & 4 == 4?

# 3.6) What is "cat" > "dog"? What about other words? Can you find a pattern?

# 3.7) By the way, did you know that logicals have numeric representations? 
#      Try TRUE + 1. Then try FALSE + 1. What is the numeric value of TRUE? 
#      What is the numeric value of FALSE?

## 4 VARIABLES -----------------------------------------------------------------

# This is all fun and games, but anything we do in the console, even if the 
# command originated from a script, will be "gone" after it's been run. Most of 
# the time, we want to store data somewhere more permanently. This is where 
# variables come in. Variables are like little containers that can hold 
# literally anything, from single numbers to whole data sets!
# When we store something in a variable, we say we "assign" something to that 
# variable. In R, we use a little "arrow" (the "assignment operator") to assign 
# something to a variable. It works like this:

single_number <- 7

# By the way: There is a shortcut in RStudio that produces the little arrow <-
# Try it out: alt + -

# 4.1) Type single_number (without quotation marks) into the console and hit 
#      return. What happens?

# 4.2) Run the following code and once again, run single_number in the console. 
#      What changed?
single_number <- 2

# 4.3) Assign something to a variable with a name of your choice.
this_is_a_string <- "hello world"
a_sequence <- 1:5

# 4.4) Examine what happens here. What is the result? What do you think will 
#      single_number contain now? 2 or 6? Run single_number in the console to 
#      find out whether you were right!
single_number + 4

# 4.5) Run these lines one by one. Double-check in the console what number2 and 
#      number6 contain. What happened here?
number2 <- 2
number6 <- 6

number2 + number6

multiplied <- number2 * number6
multiplied

# 4.6) Try to run this line, which contains a variable we didn't assign anything 
#      to yet. What happens?
empty_variable

## NOTE ------------------------------------------------------------------------

# Here are a few things you need to keep in mind when using variable names.

# 1) A variable name must start with a letter!
test123 <- "test" # this is a valid variable name
123test <- "test" # this is not!
_test <- "test" # also not valid!

# 2) A variable can contain . and _, but not other special character.
test_test <- "valid"
test.test <- "valid"
test#test <- "not valid"
test test <- "Spaces don't work"
teßt <- "This does!" # even though I wouldn't recommend it!

# 3) It's best to use "talking" variable names that tell you what's inside of 
#    it. At the same time, variable names should also be concise, so it can 
#    sometimes be quite difficult to find a good name.
hours_per_day <- 24
favourite_food <- "potatoes"
out_of_milk <- TRUE
this_variable_name_is_definitely_way_too_long <- "oh no"

## OPTIONAL --------------------------------------------------------------------

## NAMING CONVENTIONS ----------------------------------------------------------

# These exercises are optional - they're not part of the workshop. Run them if 
# you have some spare time during the course, or later at home if you want to 
# find out more about variable names.

# If your variable name consists of several words, it becomes more readable if 
# you separate the words. There are several ways to do this.

## PASCAL CASE
# In pascal case, every word, including the first one, starts with a capital 
# letter.
ThisIsPascalCase <- 1
MorePascalCase <- 2

## CAMEL CASE
# In camel case, every word except for the first one starts with a capital 
# letter.
thisIsCamelCase <- 1
MoreCamelCase <- 2

## SNAKE CASE
# In snake case, words are separated by an underscore.
this_is_snake_case <- 1
THIS_IS_SCREAMING_SNAKE_CASE <- 2

## KEBAB CASE
# In kebab case, words are separated by a dash. This does not work in R!
this-is-kebab-case <- 1

# Each language has "style guides" that specify what your code should look like. 
# For example, most people use snake case in R. There are also rules for 
# spacing, line breaks etc. You don't need to be too concerned with following 
# specific style guides, but always keep the readability of your code in mind. 
# This will help readers of your code (including you!) to follow it more easily.

## DANGER ZONE -----------------------------------------------------------------

# If something is already used in R, it shouldn't be used as a variable name. 
# You will notice when RStudio's autocomplete feature suggests a variable or 
# function with the same name you're trying to use.

# Sometimes, overwriting pre-existing things isn't dangerous, but it should 
# still be avoided so you won't confuse others - or yourself. For example, 
# you can overwrite functions (we'll learn about those later). Here, I overwrite 
# the mean() function:

mean <- 3.4
mean
# Luckily, the function still does it's job!
mean(c(1, 5))

# Overwriting other things does not work. For example, "for" is a special 
# keyword (which we'll get to know later in the workshop, so you can't overwrite 
# it):
for <- "test"

# Likewise, TRUE and FALSE can't be overwritten.
TRUE <- "test"

# However, there are shorthands for TRUE and FALSE, namely T and F. Try it:
T
F

# Unlike TRUE and FALSE, T and F can be overwritten. Note what happens here:
T <- FALSE
T

# This is obviously very dangerous for your code! Never overwrite anything that 
# already has a "purpose" in R, even if it's sometimes possible to do so.
# Additionally, I would always advise against using T and F instead of TRUE and 
# FALSE.

## 5 CLEANING UP ---------------------------------------------------------------

# Variables are "written" (i.e. saved to) your environment.
# In your environment pane (top right corner), you'll notice that during this 
# exercise, quite a lot of stuff as piled up. As me move to the next exercise, 
# we want to start with a clean slate. We can clean everything we have in our 
# environment by running the command:

rm(list = ls())

# While R offers you to save the content of your environment whenever you close 
# your session, it's best practice not to do that. You can tell RStudio that it 
# should  never ask you to save your environment in the options ("Tools").

## OPTIONAL --------------------------------------------------------------------

# People sometimes mock how unnecessarily complex this command is - there could 
# have been a clear, simple function with a concise name to achieve this.
# However, the `rm()` function can also be used to *r*e*m*ove single variables 
# from the environment. Try it out, and watch the environment pane!

remove_me <- 42
rm(remove_me)

# When we call rm(list = ls()), we tell it to delete an entire list instead of 
# a single variable (list = ...). This list is generated by ls() - this function 
# lists everything that is in your environment. Try it out and watch the 
# environment pane:

var1 <- "This"
var2 <- "is"
var3 <- "a"
var4 <- "test"

ls()

## FINISH LINE -----------------------------------------------------------------

# THIS IS A GIT HUB CHECKPOINT!

# Now that we finished these exercises, we want to push what we did to GitHub 
# so it is backed up and we can "time travel" later.
