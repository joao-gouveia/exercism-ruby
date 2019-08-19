class Squares

    def initialize numberInit
        @number = numberInit
    end

    def square_of_sum 
        (1..@number).reduce(:+)**2
    end

    def sum_of_squares
        (1..@number).reduce{|res, n| res+= n**2 }
    end

    def difference
        square_of_sum - sum_of_squares
    end
end
