## The code below is about 2 functions that cache and compute the 
## inverse of a matrix.

## This function creates a dedicated "matrix" object
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
    set <- function(x) {
        mtx <<- x;
        inverse <<- NULL;
}
get <- function() return(mtx);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## This function calculates the inverse of the dedicated
## "matrix" as created by `makeCacheMatrix` given above. In case
## inverse has already been calculated and is unaltered 
## then 'cacheSolve' will fetch the inverse from the cache

cacheSolve <- function(x, ...) {
       inverse <- mtx$getinv()
    if(!is.null(inverse)) {
        message("Getting cached data...")
        return(inverse) 
}
 data <- mtx$get()
    invserse <- solve(data, ...)
    mtx$setinv(inverse)
    return(inverse)
}
