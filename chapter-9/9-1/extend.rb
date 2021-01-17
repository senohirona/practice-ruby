module Greeting
  def welcome
    "いらっしゃいませ"
  end
end

class Cafe
  extend Greeting
end

puts Cafe.welcome
