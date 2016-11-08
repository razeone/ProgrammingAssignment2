## This two functions work together to calculate,
## store in a cache and retrieve the inverse of a matrix given.

## This function creates a special "matrix",
## containing functions to: set the value of a matrix,
## get the value of the matrix, get the inverse matrix,
## and set the inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## This function checks if the inverse of the given matrix
## is already calculated, if it is, the return it, otherwise,
## calculate and return it.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if(!is.null(inv)) {
        message("getting cached inverse")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setInverse(inv)
    inv
}
