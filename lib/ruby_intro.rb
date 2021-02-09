# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    sorted_arr = arr.sort!
    sorted_arr[-1] + sorted_arr[-2]
  end
end

def sum_to_n? arr, n
  for i in 0...arr.length
    for j in i+1...arr.length
      if arr[i]+arr[j] == n
        return true
      end
    end
  end
  
  false
end
# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  else 
    return s =~ /\A[bcdfghjklmnpqrstvwxyz]/i
  end
end

def binary_multiple_of_4? s
  if s !~ /\A[0|1]+\Z/
    return false
  end
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise(ArgumentError) unless 
      isbn != "" and price > 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string 
    "$%0.2f" % [price]
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
end
