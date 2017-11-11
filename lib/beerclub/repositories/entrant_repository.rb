class EntrantRepository < Hanami::Repository
  associations do
    belongs_to :user
    belongs_to :competition
    has_many :entrant_ratings
  end

  def find_with_users(competition_id)
    aggregate(:user).where(competition_id: competition_id).map_to(Entrant).to_a
  end

  def find_with_ratings_and_users(competition_id)
    aggregate(:entrant_ratings, :user).where(competition_id: competition_id).map_to(Entrant).to_a
  end

  def find_with_ratings(id)
    aggregate(:entrant_ratings).where(id: id).as(Entrant).one
  end
end
