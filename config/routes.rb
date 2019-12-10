Rails.application.routes.draw do
  resources :articles
  resources :comments
  root 'home#index'
  get 'home/index'
  get 'contacts/index'
  post '/contacts', to: 'contacts#create', as: :contacts

  #get "articles", to:"articles#index", as: :articles
  
  #get 'articles/new'
  #get 'articles/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end