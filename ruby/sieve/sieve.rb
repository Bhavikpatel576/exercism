module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    results = []
    return results if @num <= 1
    2.upto(@num) do |num|
      results << num if prime?(num)
    end
    results
  end

  def prime?(num)
    (2..Math.sqrt(num)).none? {|v| num % v == 0 }
  end
end
