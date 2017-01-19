Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get"/query_params_url", to:"names#query_params_method"
  get"/query_params_game/:guessed_number", to:"names#query_params_game_method" 

  get "/form_params_url", to: "names#form_params_method"
  post "/form_result_url", to: "names#form_result_method"
end
