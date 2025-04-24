# Enable colored output
options(crayon.enabled = TRUE)

# Load commonly used packages
if (interactive()) {
  suppressMessages({
    library(tidyverse)
    library(data.table)
    library(crayon)
  })
}

# Set a default CRAN mirror
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Custom prompt
options(prompt = "R > ", continue = "+ ")

# Quickly reload all packages
reload_packages <- function() {
  sapply(.packages(), detach, character.only = TRUE, unload = TRUE)
  sapply(c("ggplot2", "dplyr"), library, character.only = TRUE)
}

