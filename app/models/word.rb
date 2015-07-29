class Word < ActiveRecord::Base
  # Returns an Array of Word objects which represent anagrams of this word
  # This can and should make calls to the database
  # Try to do it in as few calls as possible, without loading every word into memory. If you can't, that's ok.


  # def self.canonical(word)
  #   word.downcase.chars.sort.join
  #   # Magic goes here
  # end

  def self.anagrams_for (word1)
    result = []
    array = Word.all

    array.each do | singleword |
      result.push(singleword.dictionary) if word1.downcase.chars.sort.join == singleword.anagrams
    end
    result
  end


end