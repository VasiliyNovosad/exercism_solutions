module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length == strand2.length
    (0...(strand1.length)).count { |index| (strand1[index] <=> strand2[index]) != 0 }
  end
end
