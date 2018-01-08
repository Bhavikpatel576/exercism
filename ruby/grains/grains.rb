class Grains
  def self.square(value)
    return 1 if value == 1 
    raise ArgumentError if (value <= 0 || value > 64)
    @sum = 1
    2.upto(value) {|_|  @sum *= 2}
    @sum
  end

  def self.total
    total = 0
    1.upto(64) {|value| total += square(value)}
    total
  end
end

module BookKeeping
  VERSION = 1
end

