# クラスに定義したメソッドを呼び出す
class Drink
    def name
        "カフェラテ"
    end
end

drink = Drink.new # Drinkクラスのオブジェクトを呼び出して変数に代入
puts drink.name # Drinkクラスのオブジェクトのnameメソッドで呼び出す
