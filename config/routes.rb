Rails.application.routes.draw do
  namespace :api do
    get 'rooms/index'
  end
  get 'landing/index'
  root to: 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
