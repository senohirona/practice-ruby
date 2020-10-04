# クラスに引数を受け取るメソッドを定義する

class Drink
    def order(name)
        puts "#{name}をください"
    end
end
drink = Drink.new
drink.order("カフェラテ")
