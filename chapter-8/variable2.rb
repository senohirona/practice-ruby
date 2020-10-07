# インスタンス変数を利用してみる
# インスタンス変数...ローカル変数より広いスコープを持つ変数

class Drink
    def order(item)
        puts "#{item}をください"
        @name = item
    end
    def reorder
        puts "#{@name}をもう一杯ください"
    end
end

drink = Drink.new
drink.order("カフェラテ")
drink.reorder
