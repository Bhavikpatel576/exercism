module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(type)
    return '' if type.match(/[^gcta]/i)
    return_string = ""
    type.chars.each do |l|
      case l 
      when 'C' then return_string << 'G'
      when 'G' then return_string << 'C'
      when 'A' then return_string << 'U'
      when 'T' then return_string << 'A'
      else "" 
      end
    end
    return_string
  end
end
