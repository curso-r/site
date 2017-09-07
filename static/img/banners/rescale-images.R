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
  
# 
introducao_r <- image_read('static/img/banners/introducao-r-original.jpeg')

image_scale(introducao_r, '1000') %>%
  image_border('white', '0x99') %>%
  image_crop('1000x750') %>%
  image_write('static/img/banners/introducao-r.jpeg')

# 
r_avancado <- image_read('static/img/banners/r-avancado-original.jpeg')

image_scale(r_avancado, '1000') %>% 
  image_border('white', '0x99') %>%
  image_crop('1000x750') %>%
  image_write('static/img/banners/r-avancado.jpeg')

# ler a imagem original
dash <- image_read('static/img/banners/banner-dashboards.png')
dash %>% 
  image_border('white', '200x0') %>%
  image_scale('1000x750+100') %>% 
  image_write('static/img/banners/banner-dashboards2.png')

library(magick)
library(magrittr)

# ler a imagem original
dash <- image_read('static/img/banners/banner-dashboards.png')
dash %>% 
  image_border('white', '60x30+0') %>%
  # image_crop('1200x750+100') %>% 
  # image_flatten() %>% 
  image_crop('1200x780') %>% 
  image_scale('!1000x!760') %>%
  image_write('static/img/banners/banner-dashboards2.png')


dash <- image_read('static/img/banners/keras_no_ubuntu.png')
dash %>% 
  image_scale('x!690') %>%
  image_write('static/img/banners/keras_no_ubuntu2.png')


image_read('static/img/banners/skimr.jpg') %>% 
  image_annotate('d_milk %>% \n    skim()', 
                 size = 50, font = 'ubuntu',
                 location = '+10+50') %>% 
  image_annotate('<3 <3 <3 <3', size = 50, font = 'ubuntu',
                 color = 'red',
                 location = '+350+260') %>% 
  image_scale('600x400') %>%
  image_write("static/img/banners/skimr.png")



image_read('~/Downloads/quebrando_captchas.png') %>% 
  image_border(color = 'white', geometry = '50x120') %>% 
  image_noise() %>% 
  image_annotate('#1', size = 80, font = 'ubuntu',
                 location = '+300+10', color = 'red') %>% 
  image_annotate('Introdução', size = 40, font = 'ubuntu',
                 color = 'black', location = '+10+240') %>% 
  image_write("static/img/banners/captcha_01.png")

image_read('~/Downloads/quebrando_captchas.png') %>% 
  image_border(color = 'white', geometry = '50x120') %>% 
  image_noise() %>% 
  image_annotate('#3', size = 80, font = 'ubuntu',
                 location = '+300+10', color = 'red') %>% 
  image_annotate('segmentando imagens', size = 30, font = 'ubuntu',
                 color = 'black', location = '+10+210') %>% 
  image_write("static/img/banners/captcha_03.png")

image_read('~/Downloads/quebrando_captchas.png') %>% 
  image_border(color = 'white', geometry = '50x120') %>% 
  image_noise() %>% 
  image_annotate('#4', size = 80, font = 'ubuntu',
                 location = '+300+10', color = 'red') %>% 
  image_annotate('preparando dados', size = 30, font = 'ubuntu',
                 color = 'black', location = '+10+210') %>% 
  image_write("static/img/banners/captcha_04.png")


img2 <- image_read('~/Downloads/sp_bairros.png') %>% 
  image_scale("220x220")
image_read('~/Downloads/pug.jpg') %>% 
  image_crop('400x297') %>% 
  image_composite(img2) %>% 
  image_write("static/img/banners/pug_knapsack.png")

image_read('https://raw.githubusercontent.com/curso-r/site/master/content/blog/img/knapsack.svg')  


image_read('~/Downloads/package.jpg') %>% 
  image_crop('809x600+100') %>% 
  image_scale('400x297') %>% 
  image_write("static/img/banners/package.png")






