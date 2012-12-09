class Bizcard < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :name, :bizname, :user_id
end
