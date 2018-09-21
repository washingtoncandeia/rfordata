## Geometric Objects
# Exercício, p.21
# 6. Escrever o código para cada gráfico.
library(tidyverse)

# Gráfico 1
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point() +
    geom_smooth(se = F)

# Gráfico 2
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point() +
    geom_smooth(mapping = aes(group = drv), se = FALSE)

# Gráfico 3
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
    geom_point() +
    geom_smooth(mapping = aes(group = drv), se = F)

# Gráfico 4
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point(mapping = aes(color = drv)) +
    geom_smooth(se = FALSE)

# Gráfico 5
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point(mapping = aes(color = drv)) +
    geom_smooth(mapping = aes(group = drv, linetype = drv), se = FALSE)

# Gráfico 6
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
    geom_point(size = 4, color = 'white') +
    geom_point()