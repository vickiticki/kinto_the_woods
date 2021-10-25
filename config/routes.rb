Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get '/musicals' => 'musicals#index'
  
  # get '/creators' => 'creators#index'
  
  resources :musicals, :creators, :books, :songs
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#delete'

  # get '/books/new' => 'books#new'

  root 'home#index'

end
