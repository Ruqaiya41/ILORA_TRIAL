# Example function in R/my_functions.R

# Load necessary libraries
if (!require("readr")) install.packages("readr", dependencies=TRUE)
if (!require("httr")) install.packages("httr", dependencies=TRUE)

library(readr)
library(httr)

#' Summarize Data
#'
#' This function summarizes the input data from various sources.
#'
#' @param source A string specifying the source of the data. Can be "file" or "url".
#' @param path A string specifying the path to the data. For "file", it should be a local file path.
#' For "url", it should be a web URL.
#' @return A summary of the data.
#' @export
summarize_data <- function(source, path) {
  if (source == "file") {
    data <- read_csv(path)
  } else if (source == "url") {
    response <- GET(path)
    if (response$status_code == 200) {
      data <- read_csv(content(response, "text"))
    } else {
      stop("Failed to fetch data from URL.")
    }
  } else {
    stop("Invalid source. Please specify 'file' or 'url'.")
  }

  summary(data)
}
