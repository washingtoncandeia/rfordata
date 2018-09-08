library(tidyverse)

# Gráficos separados
ggplot2::ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot2::ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot2::ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv), show.legend = FALSE)

# Multiplas funçoes, multiplos plots numa só figura.
ggplot2::ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

#Uma coisa interessante é que **ggplot2** permite mapear outros _aesthetics_ mesmo quando o mapeamento global for feito.   
#Isso ocorre, por exemplo, quando utiliza-se uma funçao `geom_` com o seu próprio mapeamento. Ele extenderá ou sobrescreverá o mapeamento global para aquela camada do plot, somente.  
#Ou seja, é possível exibir diferentes _aesthetics_ em diferentes camadas do plot. 

#Veja:
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class))+
  geom_smooth()

# Usar um subconjunto de dados para uma funçao
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(data = filter(mpg, class == 'subcompact'))

# Exercícios
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

# Usar mapeamento global para mpg, cor representando numero de cilindros do carro,
# Geom = camada de pontos (geom_point). Usará mapeamento global.
# Geom = geom_smooth, para linhas. Usará subconjunto de dados:
# fitrar por carros com transmissao manual de 5 marchas. 

ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = cyl)) + 
  geom_point() +
  geom_smooth(data = filter(mpg, trans == 'manual(m5)'))


# Testes
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = cyl)) + 
  geom_point() +
  geom_smooth()

ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = cyl)) +
  geom_point() +
  geom_smooth(se = FALSE)


# Retirando legendas:
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE, show.legend = FALSE)

# show.legend = 
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, colour = drv), show.legend = FALSE)

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, colour = drv), show.legend = TRUE)

# 5. Os códigos abaixo sao a mesma coisa?
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot2::ggplot() +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

# Sao a  mesma coisa, pois ambos usam o mesmo dado (mpg) o mapeia nas 
# duas camadas da mesma forma.
# Só substituiu o mapeamento global por ajustar camada a camada, com
# geom_point e geom_smooth.

## 6. Graficos
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
