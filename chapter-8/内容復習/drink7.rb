class Drink
  def name
    # 同じクラスのtoppingメソッドを呼び出し
    "モカ" + topping
  end

  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
drink.name
