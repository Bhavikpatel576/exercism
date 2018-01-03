
module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(s1, s2)
    if s1.size != s2.size
     raise ArgumentError.new("You must enter two arguments of the same size")
    end
    (s1.chars.zip (s2.chars)).count { |a, b| a != b}
    end
end
