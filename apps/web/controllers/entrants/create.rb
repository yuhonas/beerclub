module Web::Controllers::Entrants
  class Create
    include Web::Action

    def call(params)
      entrant = EntrantRepository.new.create(
        params[:entrant].merge(user_id: current_user.id)
      )

      redirect_to routes.show_competition_path(id: entrant.competition_id)
    end
  end
end
