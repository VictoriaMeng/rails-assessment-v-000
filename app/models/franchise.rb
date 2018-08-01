class Franchise < ActiveRecord::Base 
  has_many :ratings 
  has_many :users, through: :franchises
end