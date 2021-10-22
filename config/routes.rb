Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/musicals' => 'musicals#index'

  # get '/creators' => 'creators#index'

  resources :musicals, :creators, :books, :songs

  # get '/books/new' => 'books#new'

  root 'home#index'

end
