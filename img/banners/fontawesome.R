library(ggplot2)
library(scales)
library(emojifont)
library(dplyr)
library(grid)
library(magick)
library(magrittr)

load.fontawesome()
labs <- tibble::tibble(
  label = fontawesome(c('fa-globe', 'fa-firefox', 'fa-internet-explorer', 
                        'fa-arrow-right', 'fa-table')),
  sz = c(1800, 500, 500, 200, 500),
  x = c(1, 1, 1, 2, 3), 
  y = c(1, NA, NA, 1, 1))
u <- 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Hexagon_1.svg/2000px-Hexagon_1.svg.png'
cc <- httr::content(httr::GET(u), 'raw')
img <- png::readPNG(cc, TRUE)
img <- magick::image_read(cc)
img <- magick::image_rotate(img, degrees = 30)
gpp <- rasterGrob(img, interpolate = TRUE)
p <- ggplot(labs, aes(x=x, y=y))+
  annotation_custom(gpp, xmin = -2, xmax = 6, ymin = -.1, ymax = 2.1) + 
  geom_text(aes(label=label, size = sz), 
            family='fontawesome-webfont') +
  scale_x_continuous(limits = c(0, 4)) +
  scale_y_continuous(limits = c(0, 2)) +
  scale_size(range = c(30, 50)) +
  theme_void() +
  guides(size = FALSE) +
  theme(legend.text = element_text(family='fontawesome-webfont'))
p

arq <- 'static/img/banners/banner-scrape.png'
ggsave(arq, p, width = 2.8, height = 2.8)
arq %>% 
  image_read() %>% 
  image_border('white', '150x80') %>%
  # image_scale('1200') %>%
  image_crop('1000x750+100+100') %>% 
  image_write(arq)

