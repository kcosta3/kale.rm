#' To remove all-0 rows in a matrix.
#'
#' This is a function used to remove all-0 rows in a matrix.
#'
#' @param x Input vector, must be a matrix.
#' @return A new matrix with all-0 rows removed.
#' @examples set.seed(123)
#'   x = matrix(rpois(100, 0.1), 10, 10)
#'   rm_0s_by_row(x)
#' @export
#'

# function to remove all-0 rows (return all others)
rm_0s_by_row <- function(x){
    y = x[which(rowSums(x) != 0),]
    return(y)
}
