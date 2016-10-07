## write a pair of functions that cache the inverse of a matrix.

## The first function, makeVector creates a special "vector", which is really a list containing a function to
##1.set the value of the matrix
##2.get the value of the matrix
##3.set the value of the inverse matrix
##4.get the value of the inverse matrix


## set and get value of matrix 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}



## to calculate inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  print(m) 
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
