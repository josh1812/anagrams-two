class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :dictionary
      t.timestamps null: false
    end
  end
end
