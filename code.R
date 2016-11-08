## Tests
## Loading the functions
source('cachematrix.R')
## Create a simple square matrix
x<-rbind(c(1,2,3),c(0,1,5),c(5,6,0))
## Call makeCacheMatrix and assign it to `inv` variable
inv <- makeCacheMatrix(x)
## And finally call cacheSolve
cacheSolve(inv)