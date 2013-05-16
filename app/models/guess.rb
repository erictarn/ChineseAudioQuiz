class Guess < ActiveRecord::Base
  attr_accessible :character_id, :hanzi

  belongs_to :character
end
