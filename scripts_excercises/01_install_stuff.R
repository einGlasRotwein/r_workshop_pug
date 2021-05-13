
#####################
#### INSTALL STUFF ##
#####################

#### 1 PACKAGES ####

# There will be a few additional things that we will need before diving into the course. R offers
# a lot of functionalities, but it also heavily relies on so called "packages". Those contain
# additional functions that you can use. While it sometimes feels a bit messy to pile up a huge
# collection of packages, that is exactly the way R is supposed to be used. In fact, other programming
# languages like e.g. Python also work with additional packages or libraries.
# However, because so many packages exist which are constantly being updated (and R is updated on a
# regular basis as well), this may sometimes lead to bugs or "broken" scripts that don't run anymore.
# We will not cover this problem in this workshop, but I will share additional materials with you that
# will help you to navigate these situations.

# Let's start by installing a package called "rmarkdown". R Markdown is a package that allows you to
# render you scripts into e.g. html documents or PDFs. That makes it one of the most powerful tools
# for creating e.g. reproducible manuscripts, or for displaying your code in a nice way. We will use
# some of its functionalities for this course (stay tuned).

# We can install any package using the command install.packages(). You just write the name of
# the package you want to install in the brackets as a string, so e.g. install.packages("rmarkdown")
# If you start typing a package name without quotation marks, R Studio will already start suggesting
# packages using autocomplete.

# 1.1) Run install.packages("rmarkdown") in the console. It will install a lot of other packages
#      that it depends on.
