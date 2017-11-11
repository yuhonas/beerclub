module Web::Views::Competitions
  class New
    include Web::View

    def form
      form_for :competition, routes.create_competition_path do
        div class: "field" do
          label "Title", class: "label"
          div class: "control" do
            text_field :title, class: "input", autofocus: true
          end
        end
        submit 'Create', class: "button is-link"
      end
    end
  end
end
