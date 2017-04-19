class Complement
  TRANSCRIPT = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
  }.freeze

  def self.of_dna(strand)
    return '' unless (strand.chars.compact - TRANSCRIPT.keys).empty?
    strand.chars.each_with_object('') do |letter, result|
      result << TRANSCRIPT[letter]
    end
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
