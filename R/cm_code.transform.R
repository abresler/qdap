#' Transform Codes
#' 
#' Transform co-occurrences and/or combinations of codes into a new code(s).
#' 
#' @param x2long.obj An object from \code{\link[qdap]{cm_range2long}}, 
#' \code{\link[qdap]{cm_time2long}} or \code{\link[qdap]{cm_df2long}}.
#' @param overlap.code.list A list of named character vectors of at least two 
#' code column names to aggregate co-occurrences.
#' @param combine.code.list A list of named character vectors of at least two 
#' code column names to combine
#' @param exclude.code.list A list of named character vectors of at least two 
#' code column names to compare and exclude.  The last column name is the one 
#' that will be excluded.
#' @param rm.var Name of the repeated measures column.  
#' @return Returns a dataframe with overlapping, combined occurrences, and/or 
#' exclusion of supplied overlapping codes added.
#' @note The code column must be named \code{"code"} and your start and end 
#' columns must be named \code{"start"} and \code{"end"}.
#' @seealso \code{\link[qdap]{cm_range2long}},
#' \code{\link[qdap]{cm_time2long}},
#' \code{\link[qdap]{cm_df2long}},
#' \code{\link[qdap]{cm_code.blank}},
#' \code{\link[qdap]{cm_code.combine}},
#' \code{\link[qdap]{cm_code.exclude}},
#' \code{\link[qdap]{cm_code.overlap}}
#' @keywords transform
#' @export
#' @examples
#' \dontrun{
#' foo <- list(
#'     AA = qcv(terms="1:10"),
#'     BB = qcv(terms="1:2, 3:10, 19"),
#'     CC = qcv(terms="1:3, 5:6")
#' )
#' 
#' foo2  <- list(
#'     AA = qcv(terms="4:8"),
#'     BB = qcv(terms="1:4, 10:12"),
#'     CC = qcv(terms="1, 11, 15:20"),
#'     DD = qcv(terms="")
#' )
#' 
#' (x <- cm_range2long(foo))
#' (D1 <- cm_long2dummy(x))
#' 
#' (z <- cm_range2long(foo, foo2, v.name="time"))
#' D2 <- cm_long2dummy(z, "time")
#' lapply(D2, head)
#' cm_combine.dummy(D1, combine.code = list(AB=qcv(AA, BB)))
#' cm_combine.dummy(D1, combine.code = list(AB=qcv(AA, BB)), overlap="==1")
#' cm_combine.dummy(D1, combine.code = list(AB=qcv(AA, BB)), overlap="!=1")
#' D1 <- cm_combine.dummy(D1, combine.code = list(AB=qcv(AA, BB)), overlap=0)
#' D1
#' D1 <- cm_combine.dummy(D1, combine.code = list(CAB=qcv(AB, CC)), overlap=FALSE)
#' D1
#' 
#' combines <- list(AB=qcv(AA, BB), ABC=qcv(AA, BB, CC))
#' cm_combine.dummy(D1, combine.code = combines)
#' cm_combine.dummy(D2, combine.code = combines)
#' }
cm_code.transform <- function(x2long.obj, overlap.code.list=NULL,
    combine.code.list=NULL,  exclude.code.list=NULL, rm.var = NULL) {
    C <- A <- B <- NULL
    if (!is.null(overlap.code.list)){
        A <- cm_code.overlap(x2long.obj = x2long.obj, 
            overlap.code.list = overlap.code.list, rm.var = rm.var)
    }
    if (!is.null(combine.code.list)){
        B <- cm_code.combine(x2long.obj = x2long.obj, 
            combine.code.list = combine.code.list, rm.var = rm.var)
    }
    if (!is.null(exclude.code.list)){
        C <- cm_code.exclude(x2long.obj = x2long.obj, 
            exclude.code.list = exclude.code.list, rm.var = rm.var)
    }
    DF <- data.frame(rbind(A, B, C))
    DF <- DF[!duplicated(DF), ]
    rownames(DF) <- NULL
    if (!is.null(rm.var)) {
        DF <- DF[order(DF[, rm.var]), ]
    }
    DF
}

