## FUnction to get the inverse of a matrix from Cache, if inverse exists in Cache

## makeCacheMatrix: FUnction to cache a the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    
    set <- function (y) 
    {
      x <<- y
      i <<- NULL
    }
    get <- function () x
    
  setinverse <- function (inverse) i <<- inverse
  getinverse <- function () i
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Cachesolve: Function that will find the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    print("Please wait, getting data from Cache")
    return(i)
  }
    matr <- x$get()
    i <- solve(matr, ...)
    x$setinverse(i)
    i
    
  }
  
