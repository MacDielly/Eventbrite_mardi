Rails.application.routes.draw do
  # get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'static_pages#index'
  # get 'events/index'
  # get 'events/new'
  # get 'events/show'
  # get 'events/create'
  resources :events, only: [:index, :new, :show, :create]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
