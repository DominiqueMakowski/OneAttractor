library(ggplot2)

data <- read.csv("data.csv")



p <- ggplot(data, aes(x=x, y=y)) +
  geom_point(size=1, alpha=0.1, shape=16) +
  theme_void()

# p

ggsave("attractor_points.png", p, width=10, height=10, dpi=150)
