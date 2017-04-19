class Pangram
  def self.pangram?(phrase)
    phrase.downcase.split('').uniq.select { |el| ('a'..'z').cover?(el) }.length == 26
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
