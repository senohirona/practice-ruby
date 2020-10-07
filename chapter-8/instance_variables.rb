class Drink
    def order(item)
        @name = item
    end
end

drink = Drink.new
drink.order("カフェラテ")
p drink.instance_variables
