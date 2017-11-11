module Web::Controllers::EntrantRating
  class Create
    include Web::Action

    def call(params)
      begin
        EntrantRatingRepository.new.create(
          params[:entrant_rating].merge(user_id: current_user.id)
        )
      rescue Hanami::Model::UniqueConstraintViolationError => e
      end

      redirect_to "/"
    end
  end
end
