term.find <-
function(str, mat){
    tester <- function(x, y){
        p <- suppressWarnings(unlist(grepl(x, y, fixed = TRUE)))
        return(which(p))
    }
    spacer <- function(string){
        sapply(string, function(x) paste0(" ", x, " "), USE.NAMES = FALSE)
    }
    str <- spacer(str)
    
    findit <- function(x) {
        unique(unlist(sapply(x, function(z) tester(z, str))))
    }
    if (is.list(mat)) {
        a <- sapply(mat, findit)
    } else {
        a <- findit(mat)
    }
    return(a)
}