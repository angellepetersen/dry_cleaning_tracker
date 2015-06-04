class ChangeUserIdFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :clothings, :user_id, :integer
  end
end
