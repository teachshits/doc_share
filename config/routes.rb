DocShare::Application.routes.draw do

  resources :users
  resources :audios
  resources :videos
  resources :documents
  resources :categories

  root :to => 'categories#index'

end
