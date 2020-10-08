# Helps

help(nameofclassattretc)

# Simplified help
?vector

# Serach help by keyword
??keyword

# Install libraries
install.packages("packagename")

# Use libraries
library(ggplot2)

# Initialize Vectors
vector(mode="logical", length=1)

# Combine Values into a Vector or List
# Auto generate vectors
c("value1", "value2", "value3")


# Variables assignation

a <- 1

# Auto range numbers sequence

1:5 # generates a vector with values sequence 1->5
# Output
[1] 1 2 3 4 5

# Matrix declaration
m <- matrix(data=1:6, nrow = 2, ncol = 3)
# Output
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6


# Making matrix from vector

m <- 1:10
# Converts m to a matrix with the specified rows, cols
dim(m)  <- c(2,5)
# Output
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10



# Append vectors to cols
x <- 5:8
y <- 12:15

cbind(x,y)

# Output
     x  y
[1,] 5 12
[2,] 6 13
[3,] 7 14
[4,] 8 15


# Append vector to rows
x <- 5:8
y <- 12:15

rbind(x,y)

# Output
  [,1] [,2] [,3] [,4]
x    5    6    7    8
y   12   13   14   


# Arithmetic operations
?base:

# Vectorial operations

x <- 7:10
y <- 9:12

# Sums each index value from x with each equivalent index value fron y
x + y

# Output 
[1] 16 18 20 22

# All operations with vectors applies the expression to each value:

x > 8
# Output 
[1] FALSE FALSE  TRUE  TRUE

# Operations between matrix
x <- matrix(data=1:16, nrow = 4, ncol = 4)
x
# Output 
     [,1] [,2] [,3] [,4]
[1,]    1    5    9   13
[2,]    2    6   10   14
[3,]    3    7   11   15
[4,]    4    8   12   16

# Replicate 16 times the number 5
y <- matrix(data=rep(5,16), nrow = 4, ncol = 4)

# Output
     [,1] [,2] [,3] [,4]
[1,]    5    5    5    5
[2,]    5    5    5    5
[3,]    5    5    5    5
[4,]    5    5    5    5

# sums each row index col index between two matrix
x + y

# Output
     [,1] [,2] [,3] [,4]
[1,]    6   10   14   18
[2,]    7   11   15   19
[3,]    8   12   16   20
[4,]    9   13   17   21

# multiply each row index col index between two matrix
x * y
     [,1] [,2] [,3] [,4]
[1,]    5   25   45   65
[2,]   10   30   50   70
[3,]   15   35   55   75
[4,]   20   40   60   


# Dates and times

# Times
# Data type: POSIXct & POSIXlt

# system time
t <- Sys.time()
# Output
[1] "2020-10-06 23:56:23 -05"

# Really stored as double:
typeof(t)
# Output
[1] "double"

# real data
cat(t, "\n")
# Output
602046584 


# POSIXlt is an array

# Making an array of "times"
l <- as.POSIXlt(t)
l

# Output
[1] "2020-10-06 23:56:23 -05"

# typeof
typeof(l)

# Output
[1] "list"


# Convert timestampt to string formatted
t <- Sys.time()
str_time <- strftime(t, '%Y-%m-%d %H:%M:%S')
str_time
# output
[1] "2020-10-06 23:56:23"

# Inverse action
new_time <- strptime(str_time, '%Y-%m-%d %H:%M:%S')

# Output
[1] "2020-10-06 23:56:23 -05"

# Operations between datetimes
t - new_time

# Output 
Time difference of 0.9395626 secs


# as Date

dates_strings <- c("1 01 2012", "1 01 2013", "1 01 2014")
dates_as_Dates <- as.Date(dates_strings, "%d %m %Y")
class(dates_as_Dates)
# Output
[1] "Date"

dates_as_Dates
# Output
[1] "2012-01-01" "2013-01-01" "2014-01-01"


# format timestampt to custom destination format

format(date, "new format")

# Arrays

x <- list("a", 2, 3)

# Output
[[1]]
[1] "a"

[[2]]
[1] 2

[[3]]
[1] 3

# Factor vector
# Factorize and order vector values:

> x <- factor(c("yes", "yes", "no"))
> x

# Output
[1] yes yes no 
Levels: no yes

# Represent vector as table
> table(x)
# Output
x
 no yes 
  1   2 

# Data frames
# Like a matrix, dataframe works with cols and rows but 
# the values of each col-row can be of different types
# Dataframes also has an attributo called col.names and col.names,
# for cols and rows respectively

x <- data.frame(col1 = 1:4, col2 = c(T,T,T,F))

# Output
  col1  col2
1    1  TRUE
2    2  TRUE
3    3  TRUE
4    4 FALSE

nrow(x)

# Output
[1] 4

ncol(x)

# Output
[1] 2

# Data frames require an equal rows and cols length


# Named vectors

x <- 11:14
names(x) <- c("eleven", "twelve", "thirteen", "fourteen")

x

# Output
  eleven   twelve thirteen fourteen 
      11       12       13       14

# Lists example
my_var <- list(3, 5, 7)
names(my_var) <- c("one", "two", "three")
my_var

# Output
$one
[1] 3

$two
[1] 5

$three
[1] 7


# Subset data extraction
# [] Extracts elements of the same class
# {[]] Extracts elements of a list or dataframe. the returned class
# can not be a list or dataframe
# $ extract elements from dataframe


# In R, the first index of a vector is 1 instead of 0 (Wich is common in other languages|)

x <- c("a", "b")
x[1]

# Output
[1] "a"

# Index sequence
x[1:2]

# By sentence
x[x=="a"]

# Return a vector of booleans resulting from expression
index <- x > "a"

# Output
[1] FALSE  TRUE


# Tabular data, read files

# read.table, efficient with small files without params.
# params
# col.Classes  vector with col classes

# To know the cols classes, we can execute>

initial <- read.table('test.txt', nrows=100) # Rows to read limited
classes <- sapply(initial, class) # Returns vector with classes

# Then we can execute again read.tables passing the classes variables as colClasses
initial <- read.table('test.txt', nrows=100, colClasses = classes)


# Dump context-data to files
dump(c("x","y"), file="datos.R")
rm(x,y) # Removes from actual context
source("datos.R")
# x,y are again on context

# Example using delimiter character "sep", and file conding
#  header=TRUE means the first row in the file are haeders- col labels
# Remember to use fileEncoding in order to correctly process ñ or speceific language accents
datos <- read.table("swirl_temp/inmigintnalpry.csv", header=TRUE, sep=",", fileEncoding = "latin1")

# use read.cvs2() and read.delim2()  if the values stored in the source file have decimal point values
# In order to avoid import errors

# Save objets to filesystem
save()
save(datos, clases, file="swirl_temp/datos_inmigrates.RData")

restpre context data from file
load()
load("swirl_temp/datos_inmigrates.RData")

# These last commands save and load are like dump and source, iIthink

# To store all session context, use:
save.image() 
# this command is the same executed when we close R studio and select store session.

# Store datafrmes or matrix in files located on filesystem
write.table(datos, file="swirl_temp/datos.txt") 
# by default, the line limiter character is space if sep parameter is not set.

# using write.csv will store with comma separated values

