Rails.application.routes.draw do
  resources :sessions
  get "sign_up" => "users#new", :as => "sign_up"
  resources :users
  resources :articles do
    resources :comments
  end
  root 'home#index'
  get 'home/index'
  get 'contacts/index'
  post '/contacts', to: 'contacts#create', as: :contacts
  

  #get "articles", to:"articles#index", as: :articles
  
  #get 'articles/new'
  #get 'articles/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end