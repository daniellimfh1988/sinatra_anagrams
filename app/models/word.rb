class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(input_word)
    @input_word = input_word.downcase.chars.sort.join
    Word.where(sorted_index: @input_word).map { |element| element.dictionary_word }
  end
end

=begin
you take all the words from Word and put them into dictionary
in dictionary you need to sort through only the dictionary_words (because there are a lot of other things in Word, like ID and timestamp)
need to specify that you are only looking for dictionary_word inside dictionary

# 1. you take the word given
# 2. take the whole dictionary, for each, you downcase.chars.sort
# 3. if both the word and dictionary word match, obtain that anagram
#   end

=end

=begin
# 1.you take a word first. e.g. acres
# 2. you take a list of words (e.g. cares, list)
# 3. you take both acres and inputs (point 2) and perform the following for each word
#   3a. Downcase the word--> change to .chars--> sort--> join
# 4. then once sorted, if matched, then call out the word (e.g cares & acres--> acers = MATCH/TRUE)
=end