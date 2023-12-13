read_data <- function(){
  return(read.csv('weight-height.csv'))
}


make_plot <-function(){
  p <- ggplot(data, aes(x = Height, fill = Gender)) +
    geom_histogram(bins = 30, position = 'identity', alpha = 0.6) +
    labs(title = 'Distribution of Heights by Gender', x = 'Height', y = 'Count') +
    theme_minimal()
  ggsave('/home/graphs/height_distribution.png', plot = p, width = 10, height = 6)
}