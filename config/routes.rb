Rails.application.routes.draw do

  resources :places, only: [:index]

end
