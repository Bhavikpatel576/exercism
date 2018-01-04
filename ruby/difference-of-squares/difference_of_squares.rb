
module BookKeeping
  VERSION = 4
end

class Squares 
  attr_reader :number 
  def initialize(number)
    @number = number
  end
  
  def square_of_sum
    value = 1.upto(@number).reduce(:+)
    value*value
  end

  def sum_of_squares
    1.upto(@number).map {|v| v**2}.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
