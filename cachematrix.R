## This is a pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(X = matrix()) {
  invm <- NULL
  set <- function(y) {
    x <<- y
    invm <<- NULL
  }
  get <- function() x
  setinvm <- function (inverse) m <<- inverse
  getinvm <- function () m
  list(set = set, get = get, setinvm = setinvm, getinvm = getinvm)
}

## This function computes the inverse of the special "matrix" returned by
## makeCacheMatrix. If the inverse has already been calculated (and the matrix has not 
## changed), then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(makeCacheMatrix){
  invm <- x$getinvm()
  if(!is.null(invm)) {
    message("getting cached data")
    return(invm)
  }
  data <- x$getinvm()
  invm <- solve(data, ...)
  x$setinvm(invm)
  invm
}
