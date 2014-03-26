Kaomojiworld::Application.routes.draw do
  resources :favorites

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :mojis

  resources :users do
    get 'show'
  end

  root :to => 'mojis#index'
end
