# 1. Load the core data visualization library
library(tidyverse)
library(ggplot2)

# 2. Generate a scatter plot with a smooth trend line using the built-in 'mpg' dataset
 p<- ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point(aes(colour = fct_rev(cut)), size = 2, alpha = 0.4)+
  labs(
    title = "Price and Carat of Diamonds, by Cut",
    x = "Carat",
    y = "Price ($)",
    color = "Cut"
  ) +
  theme_minimal()

ggsave(
  filename = "10272026ICA17",
  plot = p,
  width = 8,
  height = 6,
  dpi = 300
)
