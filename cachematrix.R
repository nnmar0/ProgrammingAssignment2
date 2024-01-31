## Put comments here that give an overall description of what your
## functions do

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The makeCacheMatrix is a function that creates a special "matrix" object that 
##can cache it inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        #the set function allows saving of the matrix
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        #get allows retrieving saved matrix
        get <- function()x
        #setinverse caches the matrix inverse
        setInverse <- function(inverse) j <<- inverse
        #getinverse retrieves cached inverse matrix
        getInverse <- function() j 
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}


## Write a short comment describing this function

##The cacheSolve function computes the inverse of the special "matrix" from 
##the makeCacheMatrix function.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        #setting function form
        matx <- x$get()
        m <- solve(matx,...)
        x$setInverse(m)
        m
}
