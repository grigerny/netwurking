class Bizcard < ActiveRecord::Base
  has_many :relationships
  has_many :users, :through => :relationships
  
  attr_accessible :name, :bizname, :user_id
end
