## Caching the Inverse of a Matrix:
## Below are functions that are used to create a special object that stores a matrix and caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
         get = get,
        setInverse = setInverse,
        getInverse = getInverse)

}
## This function computes the inverse of "matrix" created by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
       inv <- x$getInverse()
        if (!is.null(inv)) {
        message("getting cached data")
return(inv)
}
mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
inv
}
>x<- matrix(c(9,8,4,7,5,6,4,5,6),3,3)
> solve(x)
           [,1]       [,2]       [,3]
[1,]  0.0000000  0.2142857 -0.1785714
[2,]  0.3333333 -0.4523810  0.1547619
[3,] -0.3333333  0.3095238  0.1309524
