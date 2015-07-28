class Word < ActiveRecord::Base
  # Returns an Array of Word objects which represent anagrams of this word
  # This can and should make calls to the database
  # Try to do it in as few calls as possible, without loading every word into memory. If you can't, that's ok.
  def self.canonical(word)
    word.downcase.chars.sort.join
    # Magic goes here
  end

  def self.anagrams_for (word1, array)
    result = []
    array.each do |singleword|
      result.push(singleword) if canonical(word1) == canonical(singleword)
    end
    result
  end


end