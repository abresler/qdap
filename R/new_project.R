#' Project Template
#' 
#' Generate a project template to increase efficiency.
#' 
#' @param project A character vector of the project name.
#' @param path The path to where the project should be created.  Default is the 
#' current working directory.
#' @details The project template includes these main directories and scripts:
#' \itemize{
#' \item{ANALYSIS}{ - A directory containing the following analysis scripts:
#' \itemize{
#'     \item{01_clean_data.R}{ * intial cleaning of raw transcripts}
#'     \item{02_analysis_I.R}{ * intial analysis}
#'     \item{03_plots.R}{ * plotting script}
#'     }
#' }
#' \item{CM_DATA}{ - A directory to export/import scripts for cm_xxx family of 
#'     functions}
#' \item{CODEBOOK}{ - A directory to store coding conventions or demographics 
#'    data}
#' \item{CORRESPONDENCE}{ - A directory to store correspondence and agreements 
#'     with the client}
#' \item{DATA_CLEANED}{ - A directory to store cleaned data (generally .RData 
#'     format)}
#' \item{DATA_FOR_REVIEW}{ - A directory to put data that may need to be altered 
#'     or needs to be inspected more closely}
#' \item{DOCUMENTS}{ - A directory to store documents related tot he project}
#' \item{PLOTS}{ - A directory to store plots}
#' \item{RAW_TRANSCRIPTS}{ - A directory to store the raw transcripts}
#' \item{REPORTS}{ - A directory to house reports; contains:
#' \itemize{
#'     \item{report_1.rnw}{ * A latex rnw file for use with \href{http://yihui.name/knitr/}{knitr}}
#'     \item{project.bib}{ * A latex bibtex file}
#'     }
#' }
#' \item{TABLES}{ - A directory to export tables to}  
#' \item{WORD_LISTS}{ - A directory to store word lists that can be sourced and 
#'     supplied to functions}
#' \item{extra_functions.R}{ - A script to store user made functions related to the 
#'     project}
#' \item{LOG.txt}{ - A text file documenting project changes/needs etc.}
#' \item{TO_DO.txt}{ - A text file documenting project tasks}
#' }
#' @return Creates a project template.
#' @keywords replace
#' @export
new_project <- function(project = "new", path = getwd()) {
    WD <- getwd()
    on.exit(setwd(WD))
    if(file.exists(paste0(path, "/", project))) {
        cat(paste0("\"", paste0(path, "/", project), 
            "\" already exists:\nDo you want to overwrite?\n\n"))
        ans <- menu(c("Yes", "No")) 
        if (ans == "2") {
            stop("q_workflow aborted")
        } else {
            delete(paste0(path, "/", project))
        }
    }
    x <- suppressWarnings(invisible(folder(folder.name=paste0(path, "/", project))))
    setwd(x)
    y <- invisible(folder(ANALYSIS, CODEBOOK, DATA_CLEANED, 
        DATA_FOR_REVIEW, RAW_TRANSCRIPTS, PLOTS, TABLES, CM_DATA, 
        WORD_LISTS, REPORTS, CORRESPONDENCE, DOCUMENTS))
    cat(file=paste0(x, "/", "extra_functions.R"))
    cat(file=paste0(x, "/", "TO_DO.txt"))
    cat(paste0("Project \"", project, "\" created: ", Sys.time(), "\n"), 
        file=paste0(x, "/", "LOG.txt"))
    invisible(folder(folder.name=paste0(y[[4]], "/", "ALREADY_REVIEWED")))
    cat(paste0("library(qdap)\ndir_map(\"", 
        y[[5]], "\")\n\n\n\n", 
    "len <- length(dir(\"", y[[5]], "\"))\n",
    "L1 <- lapply(paste0(\"dat\", 1:len), function(x) get(x))\n", 
    "names(L1) <- paste0(\"dat\", 1:len)\n",
    "\n\n\n\nsave( , file = \"", y[[3]], 
        "/cleaned.RData\")\n"), file=paste0(y[[1]], "/", 
        "01_clean_data.R"))
    cat(paste0("library(qdap, ggplot2, grid, scales)\nsource(\"",
        paste0(x, "/", "extra_functions.R"), "\")\n",
        paste0("load(\"", y[[3]], "/cleaned.RData", "\")")),
        file=paste0(y[[1]], "/", "02_analysis_I.R"))
    cat(paste0("library(qdap, ggplot2, grid, scales)\nsource(\"",
        paste0(x, "/", "extra_functions.R"), "\")\n",
        paste0("load(\"", y[[3]], "/cleaned.RData", "\")\n"),
        paste0("setwd(\"", y[[6]], "\")\n")),
        file=paste0(y[[1]], "/", "03_plots.R"))
    cat(paste0("Project \"", project, "\" created:\n",
        x, "\n"))
    rnw <- c("\\documentclass{scrartcl}",                                                     
        "\\usepackage[american]{babel}",                                                  
        "\\usepackage{csquotes}",                                                         
        "\\usepackage{scrextend}",                                                        
        "\\usepackage[style=apa, backend=biber]{biblatex}",                               
        "\\addbibresource{project.bib}",                                                  
        "\\DeclareLanguageMapping{american}{american-apa}",                               
        "\\usepackage{amsmath}",                                                          
        "\\usepackage[sc]{mathpazo}",                                                     
        "\\usepackage{geometry}",                                                         
        "\\geometry{verbose,tmargin=2.5cm,bmargin=2.5cm,lmargin=2.5cm,rmargin=2.5cm}",    
        "\\setcounter{secnumdepth}{2}",                                                   
        "\\setcounter{tocdepth}{2}",                                                      
        "\\usepackage{url}",                                                              
        "\\usepackage[unicode=true,pdfusetitle,",                                         
        " bookmarks=true,bookmarksnumbered=true,bookmarksopen=true,bookmarksopenlevel=2,",
        " breaklinks=false,pdfborder={0 0 1},backref=false,colorlinks=false]",            
        " {hyperref}",                                                                    
        "\\hypersetup{pdfstartview={XYZ null null 1}}",                                   
        "\\usepackage{enumerate}",                                                        
        "\\usepackage{booktabs}",                                                         
        "\\usepackage{siunitx}",                                                          
        "\\usepackage[justification=justified,singlelinecheck=false]{caption}",           
        "\\usepackage{hyperref}",                                                         
        "\\usepackage{here}",                                                             
        "\\usepackage{tcolorbox}",                                                        
        "\\usepackage{ulem}",                                                             
        "\\usepackage[T1]{fontenc}",                                                      
        "\\usepackage{caption}",                                                          
        "\\usepackage{threeparttable}",                                                   
        "",                                                                               
        "\\captionsetup{%",                                                               
        "  font=small,",                                                                  
        "  labelfont=bf,",                                                                
        "  singlelinecheck=false,",                                                       
        "  tableposition=top",                                                            
        "}",                                                                              
        "\\defbibheading{center}{%",                                                      
        "  \\phantomsection",                                                             
        "  \\section*{\\centering\\normalfont\\refname}",                                 
        "  \\pdfbookmark{\\refname}{References}",                                         
        "}",                                                                              
        "",                                                                               
        "\\newenvironment{my_enumerate}{",                                                
        "\\begin{enumerate}",                                                             
        "  \\setlength{\\itemsep}{1pt}",                                                  
        "  \\setlength{\\parskip}{0pt}",                                                  
        "  \\setlength{\\parsep}{0pt}}{\\end{enumerate}",                                 
        "}",                                                                              
        "",                                                                               
        "",                                                                               
        "\\begin{document}",                                                                                                              
        "",                                                                               
        "%load packages that will be invisible on slides",                                
        "<<setup, include=FALSE, cache=FALSE>>=",                                         
        "libs <- c(\"qdap\", \"ggplot2\", \"reshape2\", \"gridExtra\", \"tables\", \"xtable\")",
        "lapply(libs, library, character = TRUE)",                                                                                                                                  
        "save <- booktabs()",                                                            
        "",                                                                               
        "opts_chunk$set(fig.path='figure', fig.align='center', fig.show='hold')",         
        "options(replace.assign=TRUE,width=90)",                                          
        "@",                                                                              
        "",                                                                               
        "",                                                                               
        "\\title{}",                                                                      
        "\\subtitle{}",                                                                   
        "\\author{}",                                                                     
        "\\date{}",                                                                       
        "\\maketitle",                                                                    
        "",                                                                               
        "\\section{}",                                                                    
        "",                                                                               
        "\\printbibliography[heading=center]",                                            
        "\\end{document}\n"
    ) 
    rnw <- paste(rnw, collapse="\n")
    cat(rnw, file = paste0(y[[10]], "/report_1.rnw"))
    doc1 <- system.file("CITATION", package = "qdap")
    cite <- readLines(doc1)
    cite2 <- cite[4:10]
    cite2 <- gsub("= \"", "= {", cite2)
    cite2 <- gsub("\",", "},", cite2)
    cite2[1] <- "@MANUAL{Rinker,"
    cite2[8] <- "}\n"
    cite2 <- paste(cite2, collapse="\n")
    cat(rnw, file = paste0(y[[10]], "/project.bib"))
}