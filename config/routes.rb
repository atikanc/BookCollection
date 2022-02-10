Rails.application.routes.draw do
  resources :publications
  resources :users
  resources :books
  root 'publications#index'

  get '/books/:id/delete', to: 'books#delete', as: 'delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
