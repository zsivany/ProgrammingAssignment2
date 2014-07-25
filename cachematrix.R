
##This Programming assignment two for time consuming computation task

##PT

## makeCacheMatrix input variable a matrix object then the inside of the function calculate the inverse of the mtx

makeCacheMatrix <- function(c(data.matrix, m){
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
	##list for the 
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

##cacheSolve calculate the inverse of the matrix
##First check, the inverse of the matrix is calculated already. If it true, then the computation of the
## inverse matrix will skipped

cacheSolve <- function(x, ...){
        m <- x$getinverse()
        if (!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setsolve(m)
}
