#' To remove all-0 columns in a matrix.
#'
#' This is a function used to remove all-0 columns in a matrix.
#'
#' @param x Input vector, must be a matrix.
#' @return A new matrix with all-0 columns removed.
#' @examples set.seed(123)
#'   x = matrix(rpois(100, 0.1), 10, 10)
#'   rm_0s_by_col(x)
#' @export
#'

# function to remove all-0 columns (return all others)
rm_0s_by_col <- function(x){
    z = x[, which(colSums(x) != 0)]
    return(z)
}
