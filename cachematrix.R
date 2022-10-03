
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creating cache so that will save time 

makeCacheMatrix <- function(x = matrix()) { 
  #p is a place holder for future info
  p <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  ##<<-assign a value to an object in an  diff environment 
  
  get <- function() x
  setinv <- function(inverse) p <<- inverse 
  getinv = function() p
  list(set = set, get = get, setinv = setinv,getinv = getinv)
  
  ##returns the 'special vector' containing all of the functions just defined
}


## Write a short comment describing this function



cacheSolve <- function(x, ...) { 
  ## Return a matrix that is the inverse of 'x'
  p <- x$getinv()        ## first step use getinv 
  if(!is.null(p)) {
    message(" getting data cache")
    return(p)
  }
  ##if grabs cache or skip       
  data <- x$get()
  p <- solve(data, ...)
  ##solve inverse it
  x$setinv(p)
  p
}  