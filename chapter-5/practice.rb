p ["コーヒー","カフェラテ"].size
p [1,2,3,4,5].sum
p ["モカ","カフェラテ","モカ"].uniq

ary = [1, 2]
ary.clear
p ary

p ["カフェラテ","モカ","カプチーノ"].sample

p ["大吉","中吉","末吉", "凶"].sample

p [100, 500, 300].sort

p [100, 500, 300].reverse

text = "cba"
p text.reverse

p ["100", "50", "300"].join(",")

result = [1,2,3].map do |num|
    num*3
end
p result

result = ["abc", "xyz"].map do |text|
    text.reverse
end
p result


result = ["aya","achi","Tama"].map do |name|
    name.downcase!
end
p result.sort
