class GuessSummary < ActiveRecord::Base
  attr_accessible :character_id, :user_id

  belongs_to :characters
  belongs_to :user
end