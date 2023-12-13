read_data <- function(){
  data <- read.csv('weight-height.csv')
  return(data)
}


make_plot <-function(data){
  p <- ggplot(data, aes(x = Height, fill = Gender)) +
    geom_histogram(bins = 30, position = 'identity', alpha = 0.6) +
    labs(title = 'Distribution of Heights by Gender', x = 'Height', y = 'Count') +
    theme_minimal()
  ggsave('/home/graphs/shared_folder/height_distribution.png', plot = p, width = 10, height = 6)
}
