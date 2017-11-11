module Web::Views::Competitions
  class Show
    include Web::View

    def form_for_entrant(competition)
      form_for :entrant, routes.create_entrant_path do
        hidden_field :competition_id, { value: competition.id }
        div class: "field" do
          label "Title", class: "label"
          div class: "control" do
            text_field :title, class: "input", placeholder: "The name/title of your beer", autofocus: true
          end
        end
        submit 'Create', class: "button is-link"
      end
    end

    def form_for_rate_entrant(entrant)
      form_for :entrant_rating, routes.rate_entrant_path do
        hidden_field :entrant_id, { value: entrant.id } 
        div class: "field" do
          div class: "control has-icons-left has-icons-right" do
            text_field :rating, class: "input is-large", autofocus: true, type: "number", min: 1, max: 5, step: 1, placeholder: "?"
            tag :span, class: "icon is-small is-left" do
              tag :i, class: "fa fa-pencil-square-o"
            end
          end
        end
        submit 'Rate', class: "button is-link"
      end
    end
  end
end

