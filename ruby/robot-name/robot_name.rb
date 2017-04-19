class Robot
  def name
    @name ||= gen_name
  end

  def reset
    @name = nil
  end

  private

  SYMBOLS = ('A'..'Z').to_a
  DIGITS = ('0'..'9').to_a

  def gen_name
    (0..1).map { SYMBOLS[Random.new.rand(SYMBOLS.count)] }.join +
        (0..2).map { DIGITS[Random.new.rand(DIGITS.count)] }.join
  end

end

module BookKeeping
  VERSION = 2
end