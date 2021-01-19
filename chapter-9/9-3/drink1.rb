# requie_ralative"ファイル名"で呼び出したいメソッドを指定する。
require_relative "whipped_cream"
class Drink
  include WhippedCream
  def name
    @name
  end
  def initialize
    @name = "モカ"
  end
end

mocha = Drink.new
mocha.whipped_cream
puts mocha.name
