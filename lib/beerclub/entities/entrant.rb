class Entrant < Hanami::Entity
  def user_nickname
    user.nickname
  end

  def total_rating
    EntrantRatingRepository.new.total_rating_for(self)
  end
end
