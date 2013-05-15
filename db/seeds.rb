# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Character.create(:hanzi => "媽", :zhuyin_fuhao => "ㄇㄚ", :pinyin => "ma", :english => "Mom")
Character.create(:hanzi => "爸", :zhuyin_fuhao => "ㄅㄚˋ", :pinyin => "ba", :english => "Dad")
Character.create(:hanzi => "你", :zhuyin_fuhao => "ㄋㄧˇ", :pinyin => "ni", :english => "You")
Character.create(:hanzi => "十", :zhuyin_fuhao => "ㄕˊ", :pinyin => "shi", :enlgish => "Ten") 