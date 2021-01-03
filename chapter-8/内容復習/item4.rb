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

# ITtemの子クラスであるDrinkクラスを作る
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
# full_nameメソッドを呼び出す。
puts drink.full_name
