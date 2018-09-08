## Geometric Objects
# Exercício, p.21
# 6. Escrever o código para cada gráfico.
library(tidyverse)

# Gráfico 1
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(se = FALSE)

# Gráfico 2
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(mapping = aes(group = drv), se = FALSE)

# Gráfico 3
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

# Gráfico 4
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(se = FALSE)

# Gráfico 5
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, group = drv)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(mapping = aes(linetype = drv), se = FALSE)

# Gráfico 6
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(size = 4, color = 'white') +
  geom_point()
