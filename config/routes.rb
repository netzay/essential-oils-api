Rails.application.routes.draw do
  namespace :api do
    resources :oils, except: [:new, :edit]
  end
    resources :favorites, only: [:index, :create, :destroy]
end
