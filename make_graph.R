library(ggplot2)

data <- read.csv("data.csv")



p1 <- ggplot(data, aes(x=x, y=y)) +
  geom_point(size=1, alpha=0.1, shape=16) +
  theme_void()
#p1
ggsave("attractor_points.png", p1, width=10, height=10, dpi=150)

p2 <- ggplot(data, aes(x=x, y=y)) +
  geom_hex(aes(colour = ..count..), bins = 500) +
  scale_fill_viridis_c(guide = "none", option = "inferno") +
  scale_colour_viridis_c(guide = "none", option = "inferno") +
  theme_void() +
  theme(plot.background = element_rect(fill = "black"))
p2
# p2
ggsave("attractor_density.png", p2, width=10, height=10, dpi=150)
