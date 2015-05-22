## Caching the inverse of a matrix

## make an object to inverse a matrix and cahce the result

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL #variable to store inverted matrix
        set <- function(y) {  #function to set up (store) matrix
                x <<- y #we set x to argument of the set function
                i <<- NULL #we clear inverse result as we are going to recalculate it
        }
        get <- function() x #function to get matrix
        inversematrix <- function(solve) i <<- solve #inversed matrix
        getinversedmatrix <- function() i #function to get inversed matrix
        list(set = set, get = get,
             inversematrix = inversematrix,
             getinversedmatrix = getinversedmatrix) #return all our methods so we can use them
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) { 
        i <- x$getinversedmatrix()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$inversematrix(i)
        i        
}
