Rails.application.routes.draw do
  resources :mushrooms, only: [:index] do
    post 'search', on: :collection
    get 'search', on: :collection
  end
  root "mushrooms#index"
end
