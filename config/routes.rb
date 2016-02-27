Rails.application.routes.draw do

  root 'home#index'

  resources :games, except: [:new, :edit] do
    resources :reviews, except: [:new, :edit]
  end
end
