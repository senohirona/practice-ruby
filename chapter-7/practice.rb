def order
    puts "カフェラテをください"
end

order

def area
    3 * 3
end

result = area
p result

def dice
    array = [1,2,3,4,5,6]
    array.sample
end

puts order


def price(item)
    if item == "コーヒー" then
        puts item
        puts "300"
    elsif item == "カフェラテ" then
        puts item
        puts "400"
    end
end

puts price("コーヒー")
puts price("カフェラテ")
