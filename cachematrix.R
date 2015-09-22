## Below contains two functions: makeCacheMatrix and cacheSolve. The intentional of creating this
## two function is to finished up Cousera-R programming 2nd programming project.
## functions do

## First function is intent to create a type of list which was formed up by 4 functions, those
## 4 functions is used to get/setup matrix and its inverse matrix

makeCacheMatrix <- function(x = matrix()) {

          invx=NULL
          set <- function(y){
                    invx<<- NULL
                    x<<- y
          }
          get <- function(){
                    x
            
          }
          setinverseMatrix <- function(){
                    y=get()
                    invx<<- solve(y)
          }
          getinverseMatrix <- function() invx
          
          list(set=set,get=get,setinverseMatrix=setinverseMatrix,getinverseMatrix=getinverseMatrix)
          
}


## 2nd function is used to pull result from a list. If that list have already contains an
## inversed-matrix of its corresponding matrix, then this function is gonna return its cache
## so that we can avoid the calculation time consuming. If not this function is gonna calculate
## the inversed- matrix and return it.

cacheSolve <- function(x, ...) {
          if (is.null(x$getinverseMatrix())==TRUE){
                    print("no cache data")
                    x$setinverseMatrix()
                    return(x$getinverseMatrix())
          }else{
                    print("cached data found")
                    return(x$getinverseMatrix())
          }
}
