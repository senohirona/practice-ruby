class Drink
    def order(item)
        puts "#{item}をください"
        name = item
    end
    def reroder
        purs "#{name}をもう一杯ください"
    end
end

drink = Drink.new
drink.order("カフェラテ")
drink.reorder
