class Raindrops
  def self.convert(number)
    str = ''

    defineFactors(number).each do |factor|
      str += construct(factor)
    end
    return number.to_s if str == ''

    str
  end

  def self.construct(factor)
    case factor
    when 3
      'Pling'
    when 5
      'Plang'
    when 7
      'Plong'
    else
      ''
    end
  end

  def self.defineFactors(number)
    (1..number).select do |n|
      number % n == 0
    end
  end
end
