Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:new, :create, :destroy]
  end

  resources :bookmarks, only: [:destroy]
end
