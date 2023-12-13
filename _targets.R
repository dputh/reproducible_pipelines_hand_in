library(targets)
library(tarchetypes)
library(ggplot2)
source("functions.R")

list(
  tar_target(
    data,
    read_data()
  ),
  tar_target(
    plot,
    make_plot()
  )
)
