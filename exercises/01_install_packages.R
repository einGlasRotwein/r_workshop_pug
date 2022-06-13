
## PACKAGES --------------------------------------------------------------------

# There will be a few additional things that we will need before diving into 
# the course. You can do a lot in "pure" R, but in principle, R heavily relies 
# on  so called "packages" that additional functions (e.g. handy tools for data 
# processing, or for special statistical tests). While it sometimes feels a bit 
# messy to pile up a huge collection of packages, that is exactly the way R is 
# supposed to be used. Other programming languages like e.g. Python also work 
# with additional packages or libraries.

# However, because both R and all the different packages are constantly 
# updated, this may sometimes lead to "broken" code. For example, one of your 
# scripts might use a function from an older version of a package that has been 
# renamed in the latest version. If you - or someone else - has the latest 
# version installed, the script using the old version will not run anymore.
# We will not cover this problem in this workshop, but I will share additional 
# materials with you that will help you to navigate these situations.

# Let's start by installing a package called "rmarkdown". R Markdown is a 
# package that allows you to render you scripts into e.g. html documents or 
# PDFs. That makes it one of the most powerful tools for creating e.g. 
# reproducible manuscripts, or for displaying your code in a nice way. From now 
# on, we will leave "simple" scripts behind and use R Markdown documents.

# We can install any package using the command install.packages(). You just 
# write the name of the package you want to install in the brackets as a string, 
# so e.g. install.packages("rmarkdown")
# If you start typing a package name without quotation marks, RStudio will start 
# to suggest packages that are available on CRAN.

# 1.1) Run install.packages("rmarkdown") in the console. It will install a lot
# of other packages that it depends on.
install.packages("rmarkdown")

# YESTERDAY AFTERNOON there seems to have been an update that changed the way 
# R markdown deals with file paths, which might lead to errors when you're 
# trying to run the following files. To prevent that, go to

# Tools -> Global Options -> R Markdown
# and set "evaluate chunks in directory:" to "Project"

# If you do not see the option "evaluate chunks in directory:", run the
# following code, and then try again:
install.packages("markdown")
# (yes, it's intentional that it's markdown, not rmarkdown)
