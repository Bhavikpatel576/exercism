module BookKeeping
  VERSION = 6
end

class Pangram
  ALPHABET = ('a'..'z').to_a
  def self.pangram?(phrase)
    result = ALPHABET.all? {|char| phrase.downcase.include?(char)} 
  end
end
