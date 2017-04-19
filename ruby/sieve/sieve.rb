class Sieve
  def initialize(num)
    @number = num
  end

  def primes
    sieve = 'P' * (@number - 1)
    return [] if sieve.length <= 0
    elem = 2
    while elem**2 < @number
      (2..(@number / elem)).each { |ind| sieve[ind * elem - 2] = 'N' } if sieve[elem - 2] == 'P'
      elem += 1
    end
    result = []
    sieve.chars.each_with_index { |val, ind| result << (ind + 2) if val == 'P'}
    result
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end