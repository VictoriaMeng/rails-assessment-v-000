module FranchiseHelper
  def display_ratings
    if @franchise.ratings.count.zero?
      "No ratings yet"
    else 
      "#{@franchise.average_rating} - #{@franchise.count_ratings} votes"
    end
  end

  def display_user_rating 
    rating = current_user.rating_by_franchise(@franchise)
    "Your Rating: #{rating}" if rating
  end

  
end