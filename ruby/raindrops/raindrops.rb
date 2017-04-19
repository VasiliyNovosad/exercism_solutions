class Raindrops
  DROPS = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
  }.freeze

  def self.convert(drop)
    result = DROPS.keys.each_with_object('') do |key, obj|
      obj << DROPS[key] if (drop % key).zero?
    end
    result.empty? ? drop.to_s : result
  end
end

module BookKeeping
  VERSION = 3
end
