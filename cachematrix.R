##The following two functions allow for a time consuming operation - calculating the inverse of a matrix -
##to be completed in a shorter time.

makeCacheMatrix <- function(x = matrix()) 
{
  ##This function creates a matrix object that can cache the inverse
  
        matrix_inverse <- NULL ##creates cache

        set <- funnction  ##Set definition
        {
          
           x <<- y
           matrix_inverse <<- NULL  ##sets cached inverse to null
        }
        
        get <- function() x  ##get definition
        
        setinverse <- function(inverse) matrix_inverse <<- inverse ##Sets inverse
    
        getinverse <- function() matrix_inverse  ##returns inverse
    
           
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)

}




cacheSolve <- function(x, ...) 
{
        ## Thu=is function calculates the inverse of the matirx as defined in makeCacheMatrix
        
         matrix_inverse <- x$getinverse()
         
        if(!is.null(matrix_inverse)) 
        {
          ##Checks if the inverse has already been calculated and is in cache.
          ##If yes, returns the value that is in cache.
          message("getting cached data")
          return(matrix_inverse)
        }
        
        ###If the inverse is not present in the cache, calculate it.
        data <- x$get()
        matrix_inverse <- solve(data) 
        x$setinverse(matrix_inverse) 

        matrix_inverse ##Returns the inverse of the matrix 
}
