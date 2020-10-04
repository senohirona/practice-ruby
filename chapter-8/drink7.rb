class Drink
    def name
        "モカ" + topping
    end
    def topping
        "エスプレッソショット"
    end
end

drink = Drink.new
puts drink.name
