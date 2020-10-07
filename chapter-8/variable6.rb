# インスタンス変数へ代入するメソッドを作る

class Drink
    def name=(text)
        @name = text
    end
    def name
        @name
    end
end

drink = Drink.new
drink.name = "カフェオレ"
puts drink.name
