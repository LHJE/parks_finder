Rails.application.routes.draw do
  root "welcome#index"

  get :parks, to: "welcome#index"

end
