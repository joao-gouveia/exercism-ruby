class Hamming

    def self.compute st1, st2
        raise(ArgumentError) if(st1.length != st2.length)
        counter = 0
        st1.chars.each_with_index do |_, index| 
            if(st1[index] != st2[index])
                counter+=1
            end
        end
        counter
    end

end
