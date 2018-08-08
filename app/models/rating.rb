class Rating < ActiveRecord::Base 
  belongs_to :user
  belongs_to :franchise

  validates :franchise_id, presence: true
  validates :user_id, presence: true
  validates :stars, presence: true, numericality { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  
end