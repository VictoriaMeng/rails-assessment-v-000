class User < ActiveRecord::Base 
  has_secure_password

  validates :name, presence: true, uniqueness: true 
  validates :password, presence: true, confirmation: true
  
  has_many :ratings 
  has_many :franchises, through: :ratings
end