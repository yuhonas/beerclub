# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
root to: 'home#index'

get '/competitions/new', to: 'competitions#new',    as: :new_competition
get '/competitions/:id', to: 'competitions#show',   as: :show_competition
post '/competitions',    to: 'competitions#create', as: :create_competition
get '/competitions/:id/results', to: 'competitions#results', as: :competition_results
post '/entrants',        to: 'entrants#create',     as: :create_entrant

get "/auth/failure", to: "session#failure"
get "/auth/signout", to: "session#destroy"
get "/auth/:provider/callback", to: "session#new"
post '/entrant_rating', to: 'entrant_rating#create', as: :rate_entrant
