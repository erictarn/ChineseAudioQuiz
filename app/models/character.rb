class Character < ActiveRecord::Base
  attr_accessible :hanzi, :zhuyin_fuhao, :pinyin, :english, :audio, :audio_cache

  has_many :character_users
  has_many :users, :through => :character_users

  mount_uploader :audio, AudioUploader
  
  validates :hanzi, :presence => true

  def self.next_quiz
    arr = (1..Character.count).to_a
    GuessSummary.where(:user_id => 1).each do |gs|
      if gs.weight > 0
        (0..gs.weight).each do |i|
          arr.push(gs.character_id)
        end
      end
    end
    puts arr
    Character.find(arr.sample)
  end
end