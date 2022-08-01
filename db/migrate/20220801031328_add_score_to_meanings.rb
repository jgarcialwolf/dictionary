class AddScoreToMeanings < ActiveRecord::Migration[7.0]
  def change
    add_column :meanings, :score, :integer
  end
end
