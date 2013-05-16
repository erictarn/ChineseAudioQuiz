class Character < ActiveRecord::Base
  attr_accessible :hanzi, :zhuyin_fuhao, :pinyin, :english, :audio, :audio_cache

  mount_uploader :audio, AudioUploader
end