class ChangeNameOfColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :user_id, :creator_id
    rename_column :events, :name, :title
  end
end
