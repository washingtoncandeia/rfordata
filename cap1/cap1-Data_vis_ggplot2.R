# R for Data Science - Hadley Wickham and Garret Grolemund

# ggplot2 - Grammar of graphics
library(tidyverse)

## Questão: Carros com motores maiores usam mais combustível
## que aqueles com motores menores?

# Rectangular data: coleção de valores que estão associados
# a variáveis em uma observação. 
# Data frame: coleção rectangular, 
# com variáveis em colunas, observações em linhas.

# Data frame que faz parte do ggplot2: mpg (miles per galon)
mpg    # Coleção de dados de modelos de carro nos EE.UU

# Variável do tamanho do motor: displ
head(mpg$displ)
mpg[["displ"]]
mpg$displ

# Variável da efieciência de combustível: hwy
mpg$hwy
mpg[["hwy"]]

# x = displ 
# y = hwy
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

# Conforme avança na horizontal (x = tamanho motor, displ),
# menor a eficiêndcia do motor (y = eficiência do motor, hwy)

ggplot(data = mpg) + geom_area(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) + geom_bin2d(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) + geom_boxplot(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) + geom_col(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) + geom_count(mapping = aes(x = displ, y = hwy))

# Exercicios, p.6
ggplot(data = mpg)

View(mtcars)    # 2. 11 variáveis (colunas), 32 observações (linhas).

mpg$drv         # 3. Descreve tipo de tração.

# 4. Scatterplot hwy x cyl
ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = cyl))
ggplot(data = mpg) + geom_point(mapping = aes(x = cyl, y = hwy)) 

# 5. Scatterplot class x drv.
ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = drv))
ggplot(data = mpg) + geom_point(mapping = aes(x = drv, y = class))

# Class value
mpg[['class']]
mpg['class']
mpg$class
mpg$model
mpg$
ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = model))
ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = manufacturer))

# Usando aesthetics (cores, formas, etc).
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = manufacturer))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = year))













