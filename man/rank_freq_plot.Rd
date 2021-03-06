\name{rank_freq_mplot}
\alias{rank_freq_mplot}
\alias{rank_freq_plot}
\title{Rank Frequency Plot}
\usage{
  rank_freq_mplot(text.var, grouping.var = NULL, ncol = 4,
    jitter = 0.2, log.freq = TRUE, log.rank = TRUE,
    hap.col = "red", dis.col = "blue", alpha = 1,
    shape = 1, title = "Rank-Frequency Plot", digits = 2,
    plot = TRUE)

  rank_freq_plot(words, frequencies, plot = TRUE,
    title.ext = NULL, jitter.ammount = 0.1,
    log.scale = TRUE, hap.col = "red", dis.col = "blue")
}
\arguments{
  \item{text.var}{The text variable.}

  \item{grouping.var}{The grouping variables.  Default
  \code{NULL} generates one word list for all text.  Also
  takes a single grouping variable or a list of 1 or more
  grouping variables.}

  \item{ncol}{integer value indicating the number of
  columns in the facet wrap.}

  \item{jitter}{Amount of horizontal jitter to add to the
  points.}

  \item{log.freq}{logical.  If \code{TRUE} plots the
  frequencies in the natural log scale.}

  \item{log.rank}{logical.  If \code{TRUE} plots the ranks
  in the natural log scale.}

  \item{hap.col}{Color of the hapax legomenon points.}

  \item{dis.col}{Color of the dis legomenon points.}

  \item{alpha}{Transparency level of points (ranges between
  0 and 1).}

  \item{shape}{An integer specifying the symbol used to
  plot the points.}

  \item{title}{Optional plot title.}

  \item{digits}{Integer; number of decimal places to
  round.}

  \item{plot}{logical.  If \code{TRUE} provides a rank
  frequency plot.}

  \item{words}{A vector of words.}

  \item{frequencies}{A vector of frequencies corresponding
  to the words argument.}

  \item{title.ext}{The title extension that extends:
  "Rank-Frequency Plot ..."}

  \item{jitter.ammount}{Amount of horizontal jitter to add
  to the points.}

  \item{log.scale}{logical.  If \code{TRUE} plots the rank
  and frequency as a log scale.}
}
\value{
  Returns a rank-frequency plot and a list of three
  dataframes: \item{WORD_COUNTS}{The word frequencies
  supplied to \code{\link[qdap]{rank_freq_plot}} or created
  by \code{\link[qdap]{rank_freq_mplot}}.}
  \item{RANK_AND_FREQUENCY_STATS}{A dataframe of rank and
  frequencies for the words used in the text.}
  \item{LEGOMENA_STATS}{A dataframe displaying the percent
  hapax legomena and percent dis legomena of the text.}
}
\description{
  \code{rank_freq_mplot} - Plot a faceted word rank versus
  frequencies by grouping variable(s).

  \code{rank_freq_plot} - Plot word rank versus
  frequencies.
}
\examples{
\dontrun{
#rank_freq_mplot EXAMPLES:
x1 <- rank_freq_mplot(DATA$state, DATA$person, ncol = 2, jitter = 0)
ltruncdf(x1, 10)
x2 <- rank_freq_mplot(mraja1spl$dialogue, mraja1spl$person, ncol = 5,
    hap.col = "purple")
ltruncdf(x2, 10)
invisible(rank_freq_mplot(mraja1spl$dialogue, mraja1spl$person, ncol = 5,
    log.freq = FALSE, log.rank = FALSE, jitter = .6))
invisible(rank_freq_mplot(raj$dialogue, jitter = .5, alpha = 1/15))
invisible(rank_freq_mplot(raj$dialogue, jitter = .5, shape = 19, alpha = 1/15))

#rank_freq_plot EXAMPLES:
mod <- with(mraja1spl , word_list(dialogue, person, cut.n = 10,
    cap.list=unique(mraja1spl$person)))
x3 <- rank_freq_plot(mod$fwl$Romeo$WORD, mod$fwl$Romeo$FREQ, title.ext = 'Romeo')
ltruncdf(x2, 10)
ltruncdf(rank_freq_plot(mod$fwl$Romeo$WORD, mod$fwl$Romeo$FREQ, plot = FALSE)           , 10)
invisible(rank_freq_plot(mod$fwl$Romeo$WORD, mod$fwl$Romeo$FREQ, title.ext = 'Romeo',
    jitter.ammount = 0.15, hap.col = "darkgreen", dis.col = "purple"))
invisible(rank_freq_plot(mod$fwl$Romeo$WORD, mod$fwl$Romeo$FREQ, title.ext = 'Romeo',
    jitter.ammount = 0.5, log.scale=FALSE))
invisible(lapply(seq_along(mod$fwl), function(i){
    dev.new()
    rank_freq_plot(mod$fwl[[i]]$WORD, mod$fwl[[i]]$FREQ,
        title.ext = names(mod$fwl)[i], jitter.ammount = 0.5, log.scale=FALSE)
}))
}
}
\references{
  Zipf, G. K. (1949). Human behavior and the principle of
  least effort. Cambridge, Massachusetts: Addison-Wesley.
  p. 1.
}
\keyword{rank-frequency}
\keyword{Zipf,}

