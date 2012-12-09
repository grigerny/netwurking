class AddUserIdToBizcards < ActiveRecord::Migration
  def change
    add_column :bizcards, :user_id, :integer
  end
end
