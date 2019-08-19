class RunLengthEncoding

  def self.encode(input)
    counter = 1
    str = ''

    input.chars.each_with_index do |letter, index|
      if index == input.chars.length
        append_letter(letter,str,index)
      else
        if letter != input.chars[index + 1]
            append_letter(letter,str,counter)
            counter=1
        else
            counter+=1
        end
      end
    end
    str
    end

  def self.append_letter(letter, str, counter)
      str << counter.to_s if counter != 1
      str << letter
  end

  def self.decode(input)

    count = ''
    str = ""
    input.chars.each do |char|
        if(char.match(/\d/))
            count << char.to_s
        else 
            count = '1' if count == ''
            str << char * count.to_i
            count = ''
        end
    end
    str

  end


end
