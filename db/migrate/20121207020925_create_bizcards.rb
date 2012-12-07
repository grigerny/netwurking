class CreateBizcards < ActiveRecord::Migration
  def change
    create_table :bizcards do |t|

      t.timestamps
    end
  end
end
