# デフォルト値を追加する

def order(item = "コーヒー")
    "#{item}をください"
end

puts order
puts order("カフェラテ")
puts order("モカ")
