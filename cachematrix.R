## The best I can do is let the cacheSolve() function run the output from
## makeCacheMatrix,  

## `makeCacheMatrix`: This function creates a special "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()){
      originmatrix<<-x
      i <- NULL
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


## The input of cacheSolve should be the exact output from makeCacheMatrix

cacheSolve <- function(x) {
    
      i <- x$getinverse()

if(!is.null(i)) {
      message("getting cached data")
      return(i)
}
else
data <- x$get()
i <- solve(data)
x$setinverse(i)
i
        ## Return a matrix that is the inverse of 'x'
        ## I can only assume this comments means the 'x' is the matrix I input
        ## in the makeCacheMatrix()
}
