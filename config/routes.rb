Rails.application.routes.draw do
  resources :activities, only: [:index, :show, :destroy]
  resources :signups, only: [:index, :create]
  resources :campers, only:[:index, :show, :create, :destroy]

  # get '/campers/:id/', to: 'campers#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
