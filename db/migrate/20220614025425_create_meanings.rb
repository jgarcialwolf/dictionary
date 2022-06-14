class CreateMeanings < ActiveRecord::Migration[7.0]
  def change
    create_table :meanings do |t|
      t.string :english_word
      t.string :translation
      t.timestamps
    end
  end
end
