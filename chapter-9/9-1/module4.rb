module WhippedCream
  def whipped_cream
    @name += "ホイップクリーム"
  end
end

class Drink
  # include でWhippedCreamを追加する
  include WhippedCream
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
# whipped_creamメソッドを呼び出す
drink.whipped_cream
puts drink.name
