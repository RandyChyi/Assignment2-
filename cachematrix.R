## Put comments here that give an overall description of what your
## functions do
## My functions can cache the inverse of a matrix.

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache 
## its inverse.

makeCacheMatclarix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinvs <- function(invs) m <<- invs
	getinvs <- function() m
	list(set = set, get = get, setinvs = setinvs, getinvs = getinvs)
}

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned 
## by the function above.

cacheSolve <- function(x, ...) {
	m <- x$getinvs()
	if(!is.null(m)) {
      	message("getting cached data...")
		return(m)
	}
	data <- x$get()
      m <- solve(data, ...)
      x$setinvs(m)
      m
        ## Return a matrix that is the inverse of 'x'
}
