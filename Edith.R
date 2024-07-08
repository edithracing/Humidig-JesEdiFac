library(tidyverse)#llamo desde la libreria a tidyverse
provincias <- read.csv('./Provincias.csv')#convoco al archivo csv previamente cargado

provincias <- provincias %>%
  rename(situacion_calle = Personas.en.situación.de.calle..vía.pública.)

# Calculo la media de personas en situación de calle por provincia
media_situacion_calle <- provincias %>%
  group_by(Nombre.de.provincia) %>% #Agrupo los datos por la columna Nombre.de.provincia.
  summarise(media_situacion_calle = mean(situacion_calle, na.rm = TRUE)) #Calculo la media de la columna situacion_calle por cada provincia agrupada, generamos una nueva columna 'media_situacion_calle'

# Creamos el gráfico de personas en situación de calle por provincias
ggplot(provincias, aes(x = reorder(Nombre.de.provincia, situacion_calle), y = situacion_calle)) + #indico que datos asignamos a cada eje
  geom_bar(stat = "identity", na.rm = TRUE) + #el tipo de gráfico que realicé, podría 
  coord_flip() +  # Giro el gráfico para mayor legibilidad
  labs(title = "Personas en situaciones de calle por Provincias argentinas", #indico las etiquetas
       x = "Provincias",
       y = "Cantidad de personas en situación de calle") +
  theme_light() #indico el tema, ggplot tiene 8 temas, el genérico es minimal
