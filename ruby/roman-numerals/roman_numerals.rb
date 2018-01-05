
class Fixnum
  ROMAN_NUMERIALS = ['M','CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'] 
  ROMAN_VALUES = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1] 
  def to_roman
    number = self
    result = ''
    idx = 0
    while (number > 0) 
      if number >= ROMAN_VALUES[idx] 
       result << ROMAN_NUMERIALS[idx]
       number -= ROMAN_VALUES[idx] 
      else
        idx += 1 
      end
    end
    result
  end
end

module BookKeeping
  VERSION = 2
end
