## Ideas to cover
# square brackets
# round brackets
# dollar signs
# assigning
# colon
# lists
# arrays
# data frames
# matrices
#
## Functions to cover
# ls
# rm
# read.csv
# write.csv
# summary
# table
# unique
# attributes
# plot
# hist
# is.numeric
# is.array
# is.data.frame
# is.matrix
# apply
# tapply
# lapply
# paste
# Sys.time
# dim
# do.call
# names
# %in%
# ==, >, <, |, &
# which





x <- rnorm(10)

x > 0
x[x > 0]

x <- c(x,NA)
y <- x[!is.na(x)]

(x+1)[!is.na(x) & (x > 0)] -> z

#or (better)

x[!is.na(x) & (x>0)] + 1 -> z2

#system.time tells you how long it takes for an operation to run.

system.time(x[!is.na(x) & (x>0)] + 1 -> z2)

#Get values 1 through 10

x[1:10]

#or 10 through 1

x[10:1]

#Get values of x except values 1 through 10

x[-(1:10)]

fruit <- c(5,10,1,20)
names(fruit) <- c("orange","banana","apple","peach")

lunch <- fruit[c("apple","orange")]

dinner <- fruit[c("banana","peach")]

#Replace NA with zero

x[is.na(x)] <- 0 
x

# Note

abs(y)

#Is the same as:

y[y < 0] <- -y[y < 0]

#Matrices and Multidimensional Arrays

#Matrices have two indices A = a[i,j]
#Data frames have  any nmber of indices A = a[i1,i2,i3...]

#commands include: array(), matrix(), is.matrix(), data.frame(), as.data.frame(), etc.

#Factor is an object type. How we handle categorical variables; has levels. A list is a collection of objects of any sort. A function is an object which given objects returns something; we'll be making these.

#Vectors are of numeric values, real or complex. They will answer to the question is.numeric() and is.vector()

is.numeric(x) 
is.vector(x)

#A list is a recursive structure. (other recursive structures that act on atomic structures). Other recursive structures include functions and expressions.

#An expression...

#There is a function called mode(object) and one called length(object)

mode(x)
length(x)

attributes(x)
attributes(fruit)

#Note:

x
as.character(x)
as.numeric(as.character(x))

e <- NULL
mode(e)

e <- c(1,e)
mode(e)

#Mode changes, now e is a vector of just 1.

e <- numeric()
mode(e)
e

e[3] <- 17
e

#Note we get a vector of three, first two elements are NA, the third is 17.

alpha <- 1:10/10

#Take every second element

alpha[2 * (1:5)] -> alpha

#To truncate alpha at three:

length(alpha) <- 3

u <- 1:100

attributes(u)

attr(u,"dim") <- c(10,10)

#This turns the dimensions of u to a 10 X 10 matrix.

#Note something very confusing in R: The way R handles matrices is to fill things in column-wise first, not row-wise. So it will go down column [1,], then start filling column [2,], etc... To get around this:

u2 <- matrix(data = u,ncol=10,nrow=10,byrow=TRUE)

#Transposing works too.

tu <- t(u)

#But not with more than two dimensions.

m <- 1:24

attr(m,"dim") <- c(2,3,4)

#Note:

m[1,1,1]
m[2,1,1]
m[1,2,1]
m[2,2,1]

#The fastest changing index is the first. Fill that, then go to the next layer.

m1 <- array(data = 1:24, dim = c(2,3,4))

variable1 <- matrix(1:20, ncol=5,nrow=4,byrow=FALSE)
variable1

variable1[2,]

#Even rows:

variable1[2*(1:2)-1,]

rownames(variable1) <- c("a","b","c","d")
variable1["c",]

colnames(variable1) <- c("32","34","36","38","40")

variable2 <- as.data.frame(variable1)
is.data.frame(variable2)

variable2[,c(1,4,5)]