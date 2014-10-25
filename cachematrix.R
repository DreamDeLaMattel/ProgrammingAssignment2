## the purpose of this functions is to return de inverse of the input matrix
## if the solution was already operated it will save time returning the result from cache

## this function operates the inverse of the input matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse<-NULL
  set<-function(y){  
  x<<-y
  inverse<<-NULL}

get<-function()x
setinverse<-function(solve) inverse<<-solve
getinverse<-function()inverse 
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)}


## this function if "inverse" is not null will return us the inverse, if it's null will get the inverse from the previous function

cacheSolve <- function(x, ...) {
  inverse <-x$getinverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
    
  }
  data<-x$get()
  inverse<-solve(data, ...)
  x$setinverse(inverse)
  inverse
  
        ## Return a matrix that is the inverse of 'x'
}
