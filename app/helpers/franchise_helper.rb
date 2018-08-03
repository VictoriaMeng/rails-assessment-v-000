module FranchiseHelper
  def display_ratings
    case @franchise.ratings.count 
    when 0 
      "No ratings yet"
    end
  end
end