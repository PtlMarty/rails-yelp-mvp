Rails.application.routes.draw do
  # get 'reviews/show'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create] # nested resource
  end

end
