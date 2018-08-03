module FranchiseHelper
  def display_ratings
    if @franchise.ratings.count.zero?
      "No ratings yet"
    else 
      "#{@franchise.average_rating} - #{@franchise.count_ratings} votes"
    end
  end

  def display_user_rating 
    # if any of the user's ratings have this franchise's id 
    if current_user.ratings.exists?(franchise_id: @franchise.id)
      "Your Rating: #{current_user.rating_by_franchise(@franchise)}"
    end
  end

end