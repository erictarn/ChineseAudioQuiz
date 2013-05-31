class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :guesses
  has_many :character_users
  has_many :characters, :through => :character_users
end
