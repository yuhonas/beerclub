class EntrantRatingRepository < Hanami::Repository
  associations do
    belongs_to :user
    belongs_to :entrant
    has_one :competition, through: :entrant
  end

  def total_rating_for(entrant)
    entrant_ratings.where(entrant_id: entrant.id).sum(:rating)
  end
end
