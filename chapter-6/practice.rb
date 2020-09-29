menu = {coffee: 300, cafe_latte:400}
p menu[:cafe_latte]
menu[:tea]= 400
p menu
menu.delete(:coffee)
p menu

menu = {coffee: 300, cafe_latte:400}
menu.default = "紅茶はありませんか?"
p menu[:tea]

menu.each do |key, value|
    if key== :cafe_latte && value <= 500
        puts "カフェラテください"
    end
end

menu = {"モカ" => "チョコレートシロップとミルク入り", "カフェラテ" => " ミルク入り"}
p menu["モカ"]

menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, value|
    if value >= 350
        puts "#{key}-#{value}円"
    end
end



array = menu.keys
p array
