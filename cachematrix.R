## Put comments here that give an overall description of what your
## functions do

#These functions are a part of the Assignment of Week 3 of Coursera Data Science: R Programming


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  #this function creates a special matrix that caches its inverse
  inverse_matrix <- NULL #initialising inverse_matrix as NULL whcih will eventually hold the inverse
  set <- function(y) {   #define the set function to assign new value of matrix in parent env.
    x <<- y
    inverse_matrix <<- NULL
  }
  get <- function() x #returns value of matrix argument
  set_inverse <- function(solve) inverse_matrix <<- solve ##this will assign value of inverse_matrix in parent environment
  get_inverse<- function() inverse_matrix  ##this will get the value of inverse_matrix when called
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)

}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed),
##then the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_matrix <- x$getmean()
  if(!is.null(inverse_matrix)) {
    message("getting cached data")
    return(inverse_matrix)
  }
  data <- x$get()
  inverse_matrix <- mean(data, ...)
  x$set_inverse(inverse_matrix)
  inverse_matrix
}
