require 'pry'

class Anagram
  attr_accessor :word

  def initialize (word)
    @word = word
  end

  def match(words_array)
    answer = false
    words_array.select do |word|
      #binding.pry
      word.split("").sort == @word.split("").sort
    end
  end

end
