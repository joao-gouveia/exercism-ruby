class Prime
  def self.nth(num) 
            
    end

  def isPrime? n
    if n == 2
      return true
    elsif n == 3
      return true
    elsif n % 2 == 0
      return false
    else n % 3 == 0
      return false
    end

    i = 5
    w = 2

    while i * i <= n do
        if n % i == 0
            return false

        i += w
        w = 6 - w
        end
    end
  end
end
