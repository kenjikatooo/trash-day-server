Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/me' => 'users#me'
    end
  end

  root to: 'home#show'
end
