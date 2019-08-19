require 'set'
class SumOfMultiples
  def initialize(*args)
    @divisor = *args
  end

  def to(ceiling)
    res = Set[0]
    (1..(ceiling-1)).select do |n|
      @divisor.select do |div|
        res << n if n % div == 0
      end
    end

    res.reduce(:+)
    end
end
