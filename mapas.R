## Pacotes


library(tidyverse)
library(rnaturalearth)
library(rnaturalearthhires)

devtools::install_github("AndySouth/rnaturalearthhires")

# Baixar arquivos de mapas

BRA <- ne_states(country = "Brazil", returnclass = "sf")
plot(BRA)

AL <-  BRA[BRA$name_en == "Alagoas", ]
plot(AL)


# Criar data frame com as coordenadas
 
city <- c("São José da Laje", "Ibateguara")
lat <- c("-9.033633"," -9.160539")
long <- c("-36.068689","-35.439144")

df <- data.frame(city,lat,long)


# Plotar mapa grafico

ggplot()+ 
  geom_sf(data = AL, color = "black")
  geom_point(data = df,
             aes(x = long, y = lat, color = city))+
    theme_light()

data(world)
world
plot(world[1], col = viridis::viridis(100), main = "Mapa do mundo")
  
