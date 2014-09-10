class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :email

  has_many :questions
  has_many :answers
  has_many :votes
end
