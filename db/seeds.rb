# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


c = Character.create(:hanzi => "媽", :zhuyin_fuhao => "ㄇㄚ", :pinyin => "ma", :english => "Mom")
c.audio = File.open("#{ Rails.root }/public/ma.m4a")
c.save

c = Character.create(:hanzi => "爸", :zhuyin_fuhao => "ㄅㄚˋ", :pinyin => "ba", :english => "Dad")
c.audio = File.open("#{ Rails.root }/public/ba.m4a")
c.save

c = Character.create(:hanzi => "你", :zhuyin_fuhao => "ㄋㄧˇ", :pinyin => "ni", :english => "You")
c.audio = File.open("#{ Rails.root }/public/ni.m4a")
c.save

c = Character.create(:hanzi => "十", :zhuyin_fuhao => "ㄕˊ", :pinyin => "shi", :english => "Ten")
c.audio = File.open("#{ Rails.root }/public/shi.m4a")
c.save