class User < ActiveRecord::Base
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :relationships
  has_many :bizcards, :through => :relationships  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :full_name, :cardbackground, :twitter, :company, :cardbackgroundimage, :token, :address, :address2, :city, :state, :zip, :country, :title

  before_create :generate_token

  protected

  def generate_token
    begin
      token = SecureRandom.hex(3)
    end while User.where(:token => token).exists?
    self.token = token
  end
  
end
