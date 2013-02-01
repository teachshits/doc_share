class User < ActiveRecord::Base
  has_secure_password

  has_many :user_favorites, :dependent => :destroy
  has_many :favorites, :through => :user_favorites

  attr_accessible :login, :password, :password_confirmation

  validates :login, :presence => true, :uniqueness => true

  def self.authenticate(login, password)
    find_by_login(login).try(:authenticate, password)
  end  
  
end
