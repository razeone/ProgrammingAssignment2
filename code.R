source('cachematrix.R')
x<-rbind(c(1,2,3),c(0,1,5),c(5,6,0))
inv <- makeCacheMatrix(x)
cacheSolve(inv)