# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0, :+)
end


def max_2_sum arr
  # YOUR CODE HERE
  arr.size == 0 ? (return 0) : (return arr.max(2).reduce(:+))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.uniq.combination(2).detect { |p, q| p + q == n } #combining two elements of array and checking the sum if equal to n
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end


def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end


def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s) == "0"
    return true
  end
  if /^[01]*(00)$/.match(s) #a binary number which is a multiple of 4 will have 2 zeros in the end. Using regex to check the binary number.
    return true
  else
    return false
  end
end


class BookInStock
  attr_reader :isbn, :price #declaring getters and setters here

  def isbn= isbn
    if isbn == ''
      raise ArgumentError.new("Error! ISBN number is empty!")
    end
    @isbn = isbn
  end

  def price= price
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Error! Price cannot be negative or zero!")
    end
    @price = price
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    return "$" + sprintf("%.2f", price)
  end
end