Rails.application.routes.draw do
  namespace :api do
    resources :oils, except: [:new, :edit]
  end
end
