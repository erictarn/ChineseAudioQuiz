class Guess < ActiveRecord::Base
  attr_accessible :character_id, :hanzi

  belongs_to :character #The correct answer
  belongs_to :user

  after_create :increase_character_users_counter

  def increase_character_users_counter
    user_id = 1 #STUB
    gs = GuessSummary.where(:character_id => self.character_id).where(:user_id => user_id).first

    if gs == nil
      gs = GuessSummary.create(:character_id => self.character_id, :user_id => user_id)
    end

    if self.correct
      gs.correct_guesses += 1
      gs.weight -= 1
      gs.save
    else
      gs.incorrect_guesses += 1
      gs.weight += 1
      gs.save
    end
  end
end