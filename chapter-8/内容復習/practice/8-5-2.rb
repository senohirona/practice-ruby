class Item
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

a = Item.new("マフィン")
b = Item.new("スコーン")

puts a.name
puts b.name
