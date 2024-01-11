Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:create] # nested resource
  end

end
