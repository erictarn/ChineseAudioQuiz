class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :hanzi
      t.string :zhuyin_fuhao
      t.string :pinyin
      t.string :audio_filename
      t.timestamps
    end
  end
end
