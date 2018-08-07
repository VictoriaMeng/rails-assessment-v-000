module FranchiseHelper
  def display_ratings
    if @franchise.ratings.count.zero?
      "No ratings yet"
    else 
      "#{@franchise.average_rating} - #{@franchise.count_ratings} votes"
    end
  end

  def display_user_rating 
    "Your Rating: #{@rating}" if @rating
  end

  def display_rating_link
    @rating ? link_to("Change Your Rating!", edit_franchise_rating_path(@franchise)) : link_to("Give #{@franchise.name} a Rating!", new_franchise_rating_path(@franchise)) 
  end
end