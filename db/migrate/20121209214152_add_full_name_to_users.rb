class AddFullNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Full_Name, :string
  end
end
