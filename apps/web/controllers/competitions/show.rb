module Web::Controllers::Competitions
  class Show
    include Web::Action
   
    expose :competition, :entrants

    def call(params)
      @competition = repository.find_with_entrants(params[:id])
      @entrants    = EntrantRepository.new.find_with_users(@competition.id)
    end

    def repository
      CompetitionRepository.new
    end
  end
end
