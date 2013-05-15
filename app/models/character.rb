class Character < ActiveRecord::Base
  attr_accessible :hanzi, :zhuyin_fuhao, :pinyin
end