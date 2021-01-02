class Drink
  # 引数として受け取ったオブジェクトを変数nameへ変換
  def order(name)
    puts "#{name}をください"
  end
end

drink = Drink.new
# orderメソッドを呼び出して引数で"カフェラテ" を渡す
drink.order("カフェラテ")
