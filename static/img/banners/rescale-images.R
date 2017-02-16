library(magick)
library(magrittr)

# ler a imagem original
laptop <- image_read('static/img/banners/laptop-original.jpg')

# dar um rescale p/ ficar com o tamanho de 1000 por 750
image_scale(laptop, '1200') %>% 
  image_crop('1000x750+200') %>% 
  image_write('static/img/banners/laptop.jpg')

# ler a imagem original
bookshop <- image_read('static/img/banners/bookshop-original.jpg')

# dar um rescale p/ ficar com o tamanho de 1000 por 750
bookshop %>% 
  image_crop('1000x750') %>% 
  image_write('static/img/banners/bookshop.jpg')

# ler a imagem original
tidyverse <- image_read('static/img/banners/tidyverse-original.png')

# dar um rescale p/ ficar com o tamanho de 1000 por 750
tidyverse %>% 
  image_scale('900') %>%
  image_border('white', '50x24') %>%
  image_write('static/img/banners/tidyverse.jpg')
  