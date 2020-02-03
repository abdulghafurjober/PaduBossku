Rails.application.routes.draw do
  resources :authors do
    resources :books, only: [:index,:new,:create,:destroy ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'authors#index'

  #for book
  
  #delete 'book/:id', to: 'books#delete'

end
