\name{plot.character.table}
\alias{plot.character.table}
\title{Plots a character.table Object}
\usage{
  \method{plot}{character.table} (x, label = FALSE,
    lab.digits = 1, percent = NULL, zero.replace = NULL,
    ...)
}
\arguments{
  \item{x}{The character.table object}

  \item{label}{logical.  If TRUE the cells of the heat map
  plot will be labeled with count and proportional values.}

  \item{lab.digits}{Integer values specifying the number of
  digits to be printed if \code{label} is TRUE.}

  \item{percent}{logical.  If TRUE output given as percent.
  If FALSE the output is proption.  If NULL uses the value
  from \code{\link[qdap]{question_type}}.  Only used if
  \code{label} is TRUE.}

  \item{zero.replace}{Value to replace 0 values with.  If
  NULL uses the value from
  \code{\link[qdap]{question_type}}.  Only used if
  \code{label} is TRUE.}

  \item{\ldots}{Other arguments passed to qheat}
}
\description{
  Plots a character.table object.
}
