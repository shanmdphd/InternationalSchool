# 853x480 # 640x360
WIDTH = 640
HEIGHT = 360

Youtube = function(URL){
  paste0('<br><iframe width=',WIDTH,' height=',HEIGHT,' src="https://www.youtube.com/embed/', URL, '" frameborder="0" allowfullscreen></iframe>')
}

Vimeo = function(URL){
  paste0('<br><iframe src="https://player.vimeo.com/video/', URL, '" width=',WIDTH,' height=',HEIGHT,' frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>')
}

