class User < ActiveRecord::Base 
  has_secure_password

  validates :name, presence: true, uniqueness: true 
  validates :password, presence: true, confirmation: true
  
  has_many :ratings 
  has_many :franchises, through: :ratings

  def rating_by_franchise(franchise)
    self.ratings.find_by(franchise_id: franchise.id)
  end

  # def rating_exists?(franchise)
  #   self.ratings.exists?(franchise_id: franchise.id)
  # end
end