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
    @rating ? link_to("Rate This #{@franchise.medium}!") : link_to("Change Your Rating!")
  end
end