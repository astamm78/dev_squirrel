class Commenter < ActiveRecord::Base

  has_secure_password

  attr_accessible :email, :password, :first_name, :last_name

  before_create   { |user| user.email = user.email.downcase }

  validates :first_name, :last_name, :email, :password_digest, :presence => true
  validates :email, :format => {:with =>  /\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3}/}
  validates :email, :uniqueness => true

  def full_name
    self.first_name + self.last_name
  end

end