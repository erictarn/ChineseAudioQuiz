class Character < ActiveRecord::Base
  attr_accessible :hanzi, :zhuyin_fuhao, :pinyin, :english, :audio, :audio_cache

  mount_uploader :audio, AudioUploader
  
  validates :hanzi, :presence => true

  def self.next_quiz
    self.first(:order => "RAND()")
  end
end