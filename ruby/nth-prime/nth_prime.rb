
class Prime
  def self.nth(value)
    i = 0
    accumulator = 1
    raise ArgumentError if value <= 0
    while (i < value )
      if prime?(accumulator) 
        i += 1
        accumulator += 1
      else
        accumulator += 1
      end
    end
    accumulator - 1
  end
  
  private
  def self.prime?(number)
    return false if number <= 1
    (2..Math.sqrt(number)).select {|v| number % v == 0}.empty? 
  end
end

module BookKeeping
  VERSION = 1
end


