## Put comments here that give an overall description of what your
## functions do

## this function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {      
	    inve <- NULL
        set <- function(y) {
                x <<- y
                inve <<- NULL
        }
        get <- function() x
        setinverse<- function(inverse) inve <<- inverse
        getinverse <- function() inve
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## this function computes the inverse of the matrix from the previous function.
cacheSolve <- function(x, ...) {
	    inve <- x$getmean()
        if(!is.null(inve)) {
                message("getting cached data")
                return(inve)
        }
        data <- x$get()
        inve <- solve(data, ...)
        x$setinverse(inve)
        inve
}
        ## Return a matrix that is the inverse of 'x'
}


