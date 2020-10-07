# オブジェクト外でインスタンス変数を取得する

class Drink
    def order(item)
        puts "#{item}をください"
        @name = item
    end
    def name
        @name
    end
end

drink = Drink.new
drink.order("カフェラテ")
puts drink.name
