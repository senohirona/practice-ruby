# 既に存在するキーを対象として値を追加すると、値が上書きされる

menu = {coffie: 300, cafe_latte: 400}
menu[:coffie] = 350
p menu
