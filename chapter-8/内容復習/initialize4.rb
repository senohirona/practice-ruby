class Drink
  # initializeメソッドに引数を渡す
  def initialize(name)
    @name = name
  end
  # インスタンス変数@nameをクラス外で扱えるようにする
  def name
    @name
  end
end

drink1 = Drink.new("カフェラテ")
drink2 = Drink.new("コーヒー")
drink3 = Drink.new("モカ")

puts drink1.name
puts drink2.name
puts drink3.name
