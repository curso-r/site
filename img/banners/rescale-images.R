library(magick)

# ler a imagem original
laptop <- image_read('static/img/banners/laptop-original.jpg')

# dar um rescale p/ ficar com o tamanho de 1000 por 750
image_scale(laptop, '1200') %>% 
  image_crop('1000x750+200') %>% 
  image_write('static/img/banners/laptop.jpg')