## A pair of functions that  caching the inverse of  a matrix
## 

##  function create a matrix that can be inverted
makeCacheMatrix <- function(x = matrix()) {
  #initialize the inverse of the matrix to null
  i <- NULL
  #this function sets the value the matrix
  set<-function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i<<-inverse
  getinverse <- function() i
  #return a list with all methods
  list(set=set, get=get, 
       setinverse=setinverse, 
       getinverse=getinverse)
}


## Function that inverts a matrix and returns

cacheSolve <- function(x, ...) {

  i<-x$getinverse()
  if(!is.null(i)){
    print("getting cached data.")
    return(i)
  }
  mat<-x$get()
  i<-solve(mat)
  x$setinverse(i)
  i
}
