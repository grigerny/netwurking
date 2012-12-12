class AddCardbackgroundToUser < ActiveRecord::Migration
  def change
    add_column :users, :cardbackground, :string
  end
end
