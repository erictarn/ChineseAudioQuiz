class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :character
      t.string :hanzi
      t.boolean :correct
      t.timestamps
    end
  end
end
