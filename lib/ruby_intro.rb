# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  arr.inject(:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort! { |x,y| y <=> x }
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # return true if arr.empty? && n==0
  return false if arr.empty?
  arr.combination(2) { |x,y| return true if x+y == n }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return true unless s.empty? or not(s[0] =~ /[A-Za-z]/) or ['A', 'E', 'I', 'O', 'U'].include? s[0].upcase
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s.match(/\A[-+]?\d+\z/) && s.to_i % 4 == 0
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
    "$#{'%.02f' % @price.round(2)}"
  end
end
