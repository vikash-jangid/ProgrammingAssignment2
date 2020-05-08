## Put comments here that give an overall description of what your
## functions do
## Edited by vikash jangid
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        vj <- NULL
        set <- function(y) {
                x <<- y
                vj <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) vj <<- inverse
        getinverse <- function() vj
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        vj <- x$getinverse()
        if (!is.null(vj)) {
                message("getting cached data")
                return(vj)
        }
        data <- x$get()
        vj <- solve(data, ...)
        x$setinverse(vj)
        vj
}

