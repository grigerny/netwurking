class AddCardbackgroundimageToUser < ActiveRecord::Migration
  def change
    add_column :users, :cardbackgroundimage, :string
  end
end
