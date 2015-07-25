## The functions cache the inverse of a matrix rather than compute it repeatedly

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) { 
                x <<- y
                i <<- NULL
        } 
        get <- function() x
        setinv <- function(invmtx) i <<- invmtx        
        getinv <- function() i
        list(set = set, get = get,        
        setinv = setinv, 
        getinv = getinv)  


}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
