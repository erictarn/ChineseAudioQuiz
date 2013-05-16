# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c = Character.create(:hanzi => "你", :zhuyin_fuhao => "", :pinyin => "ni", :english => "You")
c.audio = File.open("#{ Rails.root }/public/ni.m4a")
c.save

c = Character.create(:hanzi => "您", :zhuyin_fuhao => "", :pinyin => "nin", :english => "You (Polite)")
c.audio = File.open("#{ Rails.root }/public/nin.m4a")
c.save

c = Character.create(:hanzi => "好", :zhuyin_fuhao => "", :pinyin => "hao", :english => "Good")
c.audio = File.open("#{ Rails.root }/public/hao.m4a")
c.save

c = Character.create(:hanzi => "請", :zhuyin_fuhao => "", :pinyin => "qing", :english => "Please")
c.audio = File.open("#{ Rails.root }/public/qing.m4a")
c.save

c = Character.create(:hanzi => "問", :zhuyin_fuhao => "", :pinyin => "wen", :english => "Ask")
c.audio = File.open("#{ Rails.root }/public/wen.m4a")
c.save

c = Character.create(:hanzi => "貴", :zhuyin_fuhao => "", :pinyin => "gui", :english => "Expensive")
c.audio = File.open("#{ Rails.root }/public/gui.m4a")
c.save

c = Character.create(:hanzi => "姓", :zhuyin_fuhao => "", :pinyin => "xing", :english => "Surname")
c.audio = File.open("#{ Rails.root }/public/xing.m4a")
c.save