## Put comments here that give an overall description of what your
## functions do

## This function creates a special"matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        m<- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setmean <- function(inverse) m <<-
           inverse
        getmean <-function()inv
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## This function computes the inverse of the special "matrix"returned 
## by make cache matrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached
                    data")
                return(inv)
         }
        data <- x$get()
        inv <- solve(data,...)
        x$setInverse(inv)
        inv
}

