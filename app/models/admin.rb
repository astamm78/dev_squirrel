class Admin < ActiveRecord::Base

  has_secure_password

  attr_accessible :first_name, :last_name, :email, :password

  validates :first_name, :last_name, :email, :password_digest, :presence => true
  validates :email, :format => {:with =>  /\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3}/}

  def full_name
    self.first_name + " " + self.last_name
  end

end