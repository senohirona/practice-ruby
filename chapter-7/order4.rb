# キーワード引数を利用すると、引数の順番を間違いをなくすことができる

def order(item: , size:)
    "#{item}を#{size}サイズでください"
end

puts order(item:"カフェラテ", size:"ベンティ")
puts order(size:"ベンティ", item:"カフェラテ")

