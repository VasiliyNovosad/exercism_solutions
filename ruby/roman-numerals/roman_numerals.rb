class Integer
  def to_roman
    digits = {
        1 => 'I',
        4 => 'IV',
        5 => 'V',
        9 => 'IX',
        10 => 'X',
        40 => 'XL',
        50 => 'L',
        90 => 'XC',
        100 => 'C',
        400 => 'CD',
        500 => 'D',
        900 => 'CM',
        1000 => 'M'
    }
    num = self
    true_digits = digits.select { |k, _| k <= num }
    result = ''
    until true_digits.empty?
      result << true_digits.values.last
      num -= true_digits.keys.last
      true_digits = digits.select { |k, _| k <= num }
    end
    result
  end
end


module BookKeeping
  VERSION = 2
end