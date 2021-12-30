Rails.application.routes.draw do
  resources :users
  resources :poems
  get "home/index"
  root to: "home#index"
  get '/:name_slug' => 'poems#index', as: :name_slug
end
