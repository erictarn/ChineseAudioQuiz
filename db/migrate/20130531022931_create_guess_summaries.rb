class CreateGuessSummaries < ActiveRecord::Migration
  def change
    create_table :guess_summaries do |t|
      t.references :character
      t.references :user
      t.integer :correct_guesses, :default => 0
      t.integer :incorrect_guesses, :default => 0
      t.integer :weight, :default => 0
      t.timestamps
    end
  end
end
