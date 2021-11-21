library(ggplot2)

data <- read.csv("data.csv")


p1 <- ggplot(data, aes(x=x, y=y)) +
  geom_point(size=0.2, alpha=0.1, shape=16) +
  ggtitle(Sys.Date()) +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5))
# p1
ggsave("attractor_points.png", p1, width=10, height=10, dpi=150)

p2 <- ggplot(data, aes(x=x, y=y)) +
  geom_hex(aes(colour = log(..count..), fill = log(..count..)), bins = 1000) +
  scale_fill_viridis_c(guide = "none", option = "inferno") +
  scale_colour_viridis_c(guide = "none", option = "inferno") +
  ggtitle(Sys.Date()) +
  theme_void() +
  theme(plot.background = element_rect(fill = "black"),
        plot.title = element_text(hjust = 0.5, color="white"))

# p2
ggsave("attractor_density.png", p2, width=10, height=10, dpi=150)
