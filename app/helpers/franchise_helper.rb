module FranchiseHelper
  def display_ratings
    case @franchise.ratings.count 
    when 0 
      "No ratings yet"
    else 
      "#{@franchise.average_rating} - #{@franchise.count_ratings} votes"
    end
  end
end