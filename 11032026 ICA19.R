#Emma Kuok
#11032026
#ICA 19-- GGPLOT

#importing the needed libraries
library(tidyverse)
library(ggplot2)

#using our data plot of diamonds to create a table that shows a graph 
#with the error bars

data <- diamonds %>%
  group_by(color) %>%
  summarise(
    mean = mean(price),
    sd = sd(price),
    count = n(),
    .groups = "drop"
  ) %>%
  mutate(
    LB = mean - (1.96 * sd / sqrt(count)),
    UB = mean + (1.96 * sd / sqrt(count))
  )

error_bar_diamond <- ggplot(data, aes(x = color, y = mean, color = color)) +
  geom_point(size = 2) +
  geom_linerange(aes(ymin = LB, ymax = UB)) +
  xlab("Diamond Color Level") +
  ylab("Price ($)") +
  scale_color_brewer(palette = "Dark2") +
  theme_classic() +
  theme(legend.position = "none")


ggsave(
  filename = "ICA19.png",
  plot= error_bar_diamond,
  width = 8,
  height = 6,
  dpi = 300
)


