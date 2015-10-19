class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  #1 wrote a method for spliting, capitalizing and joining user name.
  before_save :user_name

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


  validates :name, length: { minimum: 1, maximum: 100}, presence: true

  validates :password, presence: true, length: {minimum: 6}, if: "password_digest.nil?"
  validates :password, length: {minimum: 6}, allow_blank: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 100 },
            format: { with: EMAIL_REGEX }

  has_secure_password

#1 method
  def user_name
    user_name = []
    self.name.split.each do |name_part|
      user_name << name_part.capitalize
    end
    self.name = user_name.join(" ")
  end
end
