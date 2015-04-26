## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

## this function creates a list that contains 4 member functions: set, get, setInv and getInv.

## initialise the matrix
  m<-NULL
  set<-function(y){

	## use <<- to assign value  to x which different in from current environment
  x<<-y
  m<<-NULL
}

## return the input matrix

get<-function() x

## set the inversed matrix

setmatrix<-function(solve) m<<- solve

## return a list that contains the functions
getmatrix<-function() m

## change the matrix and set & get the inversed matrix

list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
## display output of matrix by returning inverse of original matrix
    m<-x$getmatrix()
    if(!is.null(m)){
	## if the inverse already calculated, just return the calculated inversion from cached data & speed up the processing time
      message("getting cached data")
      return(m)
    }

    ## if not, then calculate the inverse
    matrix<-x$get()
    m<-solve(matrix, ...)

   ## sets the value of the inverse in the cache via the setinv function
    x$setmatrix(m)
    return(m)
}
