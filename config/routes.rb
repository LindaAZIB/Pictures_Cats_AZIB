Rails.application.routes.draw do
 resources :items 
  devise_for :users
  get '/profile', to: 'profile#show'
  get "/cart", to: "items#cart"
  resources :charges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
