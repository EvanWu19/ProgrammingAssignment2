## Put comments here that give an overall description of what your
## functions do

## `makeCacheMatrix`: This function creates a special "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()){
      
      invmtrx <- NULL
      set <- function(y=matrix()) {
            x <<- y
            i <<- NULL
      }
      get <- function() x
      setinverse <- function(invmtrx) i <<- invmtrx
      getinverse <- function() i
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
