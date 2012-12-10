class Relationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :bizcard
  
  attr_accessible :bizcard_id, :user_id
end
