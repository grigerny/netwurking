class AddNameToBizcards < ActiveRecord::Migration
  def change
    add_column :bizcards, :name, :string
  end
end
