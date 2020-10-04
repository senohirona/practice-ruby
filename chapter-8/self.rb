# selfを使ってレシーバを調べる

class Drink
    def name
        p self
        "モカ" + topping
    end
    def topping
        "エスプレッソショット"
    end
end

drink = Drink.new
p drink
puts drink.name
