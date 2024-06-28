url<- "https://raw.githubusercontent.com/rominicky/materiales/main/assets/Provincias.csv"
> print(url)
[1] "https://raw.githubusercontent.com/rominicky/materiales/main/assets/Provincias.csv"
> destino <- "./provincias.csv"
> getwd()
[1] "C:/Users/edithsuarez/Documents/Documents"
> download.file(url, destino)
probando la URL 'https://raw.githubusercontent.com/rominicky/materiales/main/assets/Provincias.csv'
Content type 'text/plain; charset=utf-8' length 4960 bytes
downloaded 4960 bytes

> libraary("readr")
Error en libraary("readr"): no se pudo encontrar la función "libraary"
> library("readr")
> iris_importado_csv <- read_csv("./iris.csv")
Error: './iris.csv' does not exist in current working directory ('C:/Users/edithsuarez/Documents/Documents').
> iris_importado_csv <- read_csv("./provincias.csv")

[1mindexing[0m [34mprovincias.csv[0m [=================================] [32m182.54kB/s[0m, eta: [36m 0s[0m
                                                                                                                   
Rows: 24 Columns: 24
── Column specification ────────────────────────────────────────────────────────
Delimiter: ","
chr  (3): Provincia, Código de provincia, Nombre de provincia
dbl (21): Viviendas particulares (2022), Viviendas colectivas (2022), Poblac...

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> library("readr")
> provincias_csv<-read_csv("./provincias.csv")

[1mindexing[0m [34mprovincias.csv[0m [=================================] [32m191.82MB/s[0m, eta: [36m 0s[0m
                                                                                                                   
Rows: 24 Columns: 24
── Column specification ────────────────────────────────────────────────────────
Delimiter: ","
chr  (3): Provincia, Código de provincia, Nombre de provincia
dbl (21): Viviendas particulares (2022), Viviendas colectivas (2022), Poblac...

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> view(provincias_cvs)
Error: objeto 'provincias_cvs' no encontrado
> view(provincias_csv)
> library(tidyverse)
> 
> provincias <- provincias %>%
+   rename(situacion_calle = Personas.en.situación.de.calle..vía.pública.)
> media_situacion_calle <- provincias %>%
+   group_by(Nombre.de.provincia) %>%
+ provincias<-provincias%>%rename(situacion_calle=Personas.en.situación.de.calle..vía.pública.)

> ggplot()
> ggplot(provincias, aes(x = reorder(Nombre.de.provincia, situacion_calle), y = situacion_calle)) + geom_bar(stat = "identity", na.rm = TRUE) +coord_flip() + labs(title = "Personas en situaciones de calle por Provincias argentinas", x = "Provincias",
+        y = "Cantidad de personas en situación de calle") +
+   theme_light()
> 
