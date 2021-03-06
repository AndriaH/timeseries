# This file was generated by Rcpp::compileAttributes
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' Reduce the number of points needed to plot time series data
#' @description A very fast way to reduce the number of points in a time-series dataset. This algorithm takes a tolerance
#' range and will return all of the critical points/indexes over that range
#' 
#' @param vec A numeric vector
#' @param tolerance A decimal representing the percentage of tolerance acceptible
#' 
#' @return The value returned is a vector consisting of the indexed values that should be kept
#' 
#' @examples
#' point_reduce(1001:1100)
#' point_reduce(1001:1100, .1)
#' 
#' #takes a sin curve of 10000 in length and reduces it down to 2447 points
#' point_reduce(sin(seq(1,100,length.out = 10000)))
vreduce <- function(vec, tolerance = .01) {
    .Call('timeseriesr_vreduce', PACKAGE = 'timeseriesr', vec, tolerance)
}

#' De-duplicates a numeric vector/data.table/data.frame
#' @description These set of functions take a vector, or a datatable/dataframe (with a particular column)
#' and compress it by de-duplicating its values. Ideally, this is a good way to reduce the amount of data
#' for time-series use cases
#' 
#' @param x A vector/data.table/data.frame
#' @param returnIndex If TRUE, will return indexes, otherwise will return actual values
#' @param key If using a data.table/data.frame, the index for performing the operation on
#' 
#' @return Returns a vector/data.table/data.frame that has been de-deduplicated. 
#' De-duplicated means that consecutive duplicate values are reduced to the first occurance. 
#' 
#' @examples
#' vec <- c(1,1,2,2,3,3,4,4,5,5,4,4,3,3,2,2,1,1)
#' vdeduplicate(vec)
#' vdeduplicate(vec, TRUE)
vdeduplicate <- function(x, returnIndex = FALSE) {
    .Call('timeseriesr_vdeduplicate', PACKAGE = 'timeseriesr', x, returnIndex)
}

