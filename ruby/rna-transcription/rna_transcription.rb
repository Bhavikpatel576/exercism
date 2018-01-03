
class Complement
  DNA_TO_RNA = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(sequence)
    sequence.chars.map do |nucleotide|
      DNA_TO_RNA.fetch(nucleotide)
    end.join('')
   end
end


result = Complement.of_dna('ACGTXXCTTAA')

puts result
