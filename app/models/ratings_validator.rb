
class RatingsValidator < ActiveModel::Validator
  def validate(rating)
    if Rating.find_by(user_id: rating.user.id, franchise_id: rating.franchise.id)
      record.errors[:franchise_id] << 'Already rated this franchise'
    end
  end
end
