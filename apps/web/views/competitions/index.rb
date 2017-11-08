module Web::Views::Competitions
  class Index
    include Web::View

    def competitions
      repo = CompetitionRepository.new

      repo.all
    end
  end
end
