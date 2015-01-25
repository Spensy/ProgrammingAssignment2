## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## To store a matrix and compute its inverse and cache it.. 
makeCacheMatrix <- function(x = numeric()) {
  
  cache <- NULL
  setMatrix <- function(newValue) {
    x <<- newValue
    cache <<- NULL
  }
  getMatrix <- function() {
    x
  }
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  getInverse <- function() {
    cache
  }
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}

##following fuction solves the matrix

cacheSolve <- function(x, ...) {
  inverse <- y$getInverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  inverse}
