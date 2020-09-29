menu = {coffie: 300, cafe_latte: 400}
menu.default = 0 # キーがないときの値を指定
p menu[:tea] # nilではなくdefaultに指定した値になる
