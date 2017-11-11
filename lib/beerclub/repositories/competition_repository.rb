class CompetitionRepository < Hanami::Repository
  associations do
    has_many :entrants
    belongs_to :user
  end

  def find_with_entrants(id)
    aggregate(:entrants, :user).where(id: id).as(Competition).one
  end
end
