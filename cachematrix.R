## Put comments here that give an overall description of what your
## functions do

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The makeCacheMatrix is a function that creates a special "matrix" object that 
##can cache it inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) j <<- inverse
        getInverse <- function() j 
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}


## Write a short comment describing this function

##The cacheSolve function computes the inverse of the special "matrix" from 
##the makeCacheMatrix function. If the matrix inverse has already been calculated 
##then cacheSolve retrieves the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        mat <- x$get()
        m <- solve(mat,...)
        x$setInverse(m)
        m
}
