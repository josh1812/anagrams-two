
class AddAnagramsToWords < ActiveRecord::Migration
  def change
    add_column :words, :anagrams, :string

  end
end
