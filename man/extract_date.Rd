% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_date.R
\name{extract_date}
\alias{extract_date}
\title{Extract the date from a charcter string}
\usage{
extract_date(x, date_parser = lubridate::ymd)
}
\arguments{
\item{x}{a \code{character} string containing dates to be extracted}

\item{date_parser}{a function to extract dates from character strings; we
recommend using \code{lubridate}'s function there, e.g. \code{ymd} (any date format
with year, month, day) or \code{dmy} (any format using day, month, year);
defaults to \code{lubridate::ymd}}
}
\description{
This function is used to extract a date from a \code{character} vector, using a
user-provided date parser. It first uses regular expressions to isolate
potential dates from the character strings, and then applies the parser (by
default, \code{lubridate::ymd}) to return a \code{Date} object. The function only
handles dates provided as numbers.
}
\examples{

x <- c("contacts_2017-10-29.xlsx",
       "some text! 2020 01 12",
       "2019.1.13 - linelist",
       "no date here :-/ ") 
extract_date(x)

}
\author{
Thibaut Jombart \email{thibautjombart@gmail.com}
}
