class Complement
    def self.of_dna strand
        res = ""
        strand.chars.each do |elem|
            res  << changeElem(elem)
        end
        res
    end

    def self.changeElem elem
        case elem
            when 'G' 
                'C'
            when 'C'
                'G'
            when 'T'
                'A'
            when 'A'
                'U'
            else 
                raise Exception
        end

    end
end