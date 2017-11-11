module Web::Controllers::Competitions
  class Create
    include Web::Action

    def call(params)
      competition = CompetitionRepository.new.create(
        params[:competition].merge(user_id: current_user.id)
      )

      redirect_to routes.show_competition_path(id: competition.id)
    end
  end
end
