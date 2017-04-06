# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length==0
    return 0
  else
    s=0
    arr.each do |i|
      s +=i
    end
    return s
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length==0
    return 0
  elsif arr.length==1
    return arr[0]
  else
  arr=arr.sort
  return arr[arr.length-1]+arr[arr.length-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  bool=false
  for i in 0 .. arr.length-1
    for j in i+1 ..arr.length-1
     if arr[i]+arr[j]==n
      bool=true
     end
    end
  end
  return bool
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
    elsif s =~ /[^a-zA-Z]/
    return false
    elsif s =~ /^[aeiouAEIOU]/
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  elsif s =~ /[^01]/
    return false
  elsif Integer(s) % 4 ==  0
  return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn,price)
  if isbn.empty? || price<=0
    raise ArgumentError
  else
  @isbn=isbn
  @price=price
  end
end

def isbn
  @isbn
end

def price
  @price
end

def isbn=(new_isbn)
  @isbn=new_isbn
end

def price=(new_price)
  @price=new_price
end
def price_as_string 
  str=format("%0.2f",@price)
  return "$#{str}"
end
end
