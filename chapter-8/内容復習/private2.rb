class Cafe
  def staff
    # makanaiメソッドを呼び出す
    makanai
  end

  private
  def makanai
    "店員用スペシャルメニュー"
  end
end

cafe = Cafe.new
puts cafe.staff

# 実行に失敗する
puts cafe.makanai
