module Web::Controllers::Competitions
  class Results
    include Web::Action
    expose :competition, :entrants

    def call(params)
      @competition = CompetitionRepository.new.find_with_entrants(params[:id])
      @entrants    = EntrantRepository.new.find_with_ratings_and_users(@competition.id)
    end
  end
end
