class AddBiznameToBizcards < ActiveRecord::Migration
  def change
    add_column :bizcards, :bizname, :string
  end
end
