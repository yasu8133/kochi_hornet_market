Rails.application.routes.draw do
  # devise_for :users
  root 'items#index'
  
  # 出品機能実装のための仮置きです 堅田
  resources :exhibitions, except: :show

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :show, :new, :create]
  resources :exhibition, only:  [:index, :show, :new, :create]
end