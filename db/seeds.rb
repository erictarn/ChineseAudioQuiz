# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# c = Character.create(:hanzi => "姓", :zhuyin_fuhao => "", :pinyin => "xing", :english => "Surname")
# c.audio = File.open("#{ Rails.root }/public/xing.m4a")
# c.save

char_array = [
  {:hanzi => "你", :zhuyin_fuhao => "", :pinyin => "nǐ", :english => "you"},
  {:hanzi => "您", :zhuyin_fuhao => "", :pinyin => "nín", :english => "you (polite)"},
  {:hanzi => "好", :zhuyin_fuhao => "", :pinyin => "hǎo", :english => "1. good 2. alright 3. like"},
  {:hanzi => "請", :zhuyin_fuhao => "", :pinyin => "qǐng", :english => "1.please 2. to invite"},
  {:hanzi => "問", :zhuyin_fuhao => "", :pinyin => "wèn", :english => "ask"},
  {:hanzi => "貴", :zhuyin_fuhao => "", :pinyin => "guì", :english => "1. honorable 2. expensive; valuable"},
  {:hanzi => "姓", :zhuyin_fuhao => "", :pinyin => "xìng", :english => "surname"}#,
  # {:hanzi => "他", :zhuyin_fuhao => "", :pinyin => "tā", :english => "he"},
  # {:hanzi => "她", :zhuyin_fuhao => "", :pinyin => "tā", :english => "she"},
  # {:hanzi => "叫", :zhuyin_fuhao => "", :pinyin => "jiào", :english => "1. call; be called 2. shout 3. order"},
  # {:hanzi => "什", :zhuyin_fuhao => "", :pinyin => "shén", :english => "1. mixed 2. tenth (mathematics)"},
  # {:hanzi => "麼", :zhuyin_fuhao => "", :pinyin => "me", :english => "interrogative particle"},
  # {:hanzi => "名", :zhuyin_fuhao => "", :pinyin => "míng", :english => "1. name 2. fame"},
  # {:hanzi => "字", :zhuyin_fuhao => "", :pinyin => "zì", :english => "written character"},
  # {:hanzi => "我", :zhuyin_fuhao => "", :pinyin => "wǒ", :english => "I; me"},
  # {:hanzi => "是", :zhuyin_fuhao => "", :pinyin => "shì", :english => "to be; yes"},
  # {:hanzi => "大", :zhuyin_fuhao => "", :pinyin => "dà", :english => "big; great"},
  # {:hanzi => "學", :zhuyin_fuhao => "", :pinyin => "xué", :english => "learn"},
  # {:hanzi => "生", :zhuyin_fuhao => "", :pinyin => "shēng", :english => "1. give birth; born 2. raw"},
  # {:hanzi => "中", :zhuyin_fuhao => "", :pinyin => "zhōng", :english => "1.among 2. (in the) course 3. hit by"},
  # {:hanzi => "英", :zhuyin_fuhao => "", :pinyin => "yīng", :english => "1. related to England 2. hero"},
  # {:hanzi => "文", :zhuyin_fuhao => "", :pinyin => "wén", :english => "written language; writing"},
  # {:hanzi => "課", :zhuyin_fuhao => "", :pinyin => "kè", :english => "lesson; class"},
  # {:hanzi => "老", :zhuyin_fuhao => "", :pinyin => "lǎo", :english => "old"},
  # {:hanzi => "師", :zhuyin_fuhao => "", :pinyin => "shī", :english => "teacher; master"},
  # {:hanzi => "同", :zhuyin_fuhao => "", :pinyin => "tóng", :english => "the Same; together"},
  # {:hanzi => "校", :zhuyin_fuhao => "", :pinyin => "xiào", :english => "school"},
  # {:hanzi => "小", :zhuyin_fuhao => "", :pinyin => "xiǎo", :english => "small; little"},
  # {:hanzi => "朋", :zhuyin_fuhao => "", :pinyin => "péng", :english => "friend"},
  # {:hanzi => "友", :zhuyin_fuhao => "", :pinyin => "yǒu", :english => "friend"},
  # {:hanzi => "們", :zhuyin_fuhao => "", :pinyin => "men", :english => "plural suffix"},
  # {:hanzi => "呢", :zhuyin_fuhao => "", :pinyin => "ne", :english => "question particle"},
  # {:hanzi => "謝", :zhuyin_fuhao => "", :pinyin => "xiè", :english => "thank"},
  # {:hanzi => "再", :zhuyin_fuhao => "", :pinyin => "zài", :english => "again"},
  # {:hanzi => "見", :zhuyin_fuhao => "", :pinyin => "jiàn", :english => "see; meet"},
  # {:hanzi => "美", :zhuyin_fuhao => "", :pinyin => "měi", :english => "beautiful"},
  # {:hanzi => "國", :zhuyin_fuhao => "", :pinyin => "guó", :english => "country; national"}
]

char_array.each do |c|
  c = Character.create(:hanzi => c[:hanzi], :zhuyin_fuhao => c[:zhuyin_fuhao], :pinyin => c[:pinyin], :english => c[:english])
  c.audio = File.open("#{Rails.root}/public/#{c[:pinyin]}.m4a")
  c.save
end