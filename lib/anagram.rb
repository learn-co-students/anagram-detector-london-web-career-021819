# # Your code goes here!
# Use an attr_accessor to create a setter and getter method for the word that the Anagram class instances are initialized with.
# How will you determine if one word is an anagram for another?
# You'll need to iterate over the array of words that the .match method takes as an argument. You will compare each word of that array to the word that the Anagram class is initialized with.
# To determine if they are anagrams, try determining if they are composed of the same letters
require 'pry'
class Anagram
attr_accessor :word

  def initialize(word)
    @word = word
  end


  def match(words_array)
    words_array.select do |word|
      word.scan(/\w/).sort == self.word.scan(/\w/).sort
    end
  end

end
