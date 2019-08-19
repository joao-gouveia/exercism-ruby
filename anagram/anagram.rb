class Anagram
  def initialize(word)
    @master_word = word.downcase
    @letters = word.downcase.chars.sort
  end

  def match(words)
    words.select do |w|
      w.downcase.chars.sort == @letters && w.downcase != @master_word
    end
  end
end