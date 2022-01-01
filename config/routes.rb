Rails.application.routes.draw do
  get 'memes/index'
  get 'memes/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :memes, only: [:index, :show] do
    collection do
      get :templates
      get :images
      get :gifs
      get :videos
    end
  end
end
