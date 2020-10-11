class Item
    def name
        @name
    end
    def name=(text)
        @name = text
    end
    def full_name
        @name
    end
end

class Drink < Item
    def size
        @size
    end
    def size=(text)
        @size = text
    end
    def full_name
        "#{@name} #{@size}サイズ"
    end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name
