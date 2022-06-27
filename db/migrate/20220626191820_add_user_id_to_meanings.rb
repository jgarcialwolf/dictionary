class AddUserIdToMeanings < ActiveRecord::Migration[7.0]
  def change
    add_column :meanings, :user_id, :int
  end
end
