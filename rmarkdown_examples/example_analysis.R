
data <- iris

julis_theme <- 
  theme(panel.background = element_blank(),
        panel.grid = element_blank(),
        axis.line = element_line(colour = "black"),
        legend.position = "top")

iris_plot <- 
  iris %>% 
  ggplot(aes(x = Sepal.Length, y = Sepal.Width, colour = Species)) +
  geom_point() +
  julis_theme

t_test_iris <- 
  t.test(iris$Sepal.Length[iris$Species == "setosa"],
         iris$Sepal.Length[iris$Species == "versicolor"])

effsize_iris <- 
  cohens_d(iris$Sepal.Length[iris$Species == "setosa"],
          iris$Sepal.Length[iris$Species == "versicolor"])

