Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end

  root 'items#index'
  
  # 出品機能実装のための仮置きです 堅田もしexhibitionコントローラを修正したなら削除して10行目のresourcesをexhibitionsにすること
  resources :exhibitions, except: :show

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :show, :new, :create]
  resources :exhibition, only:  [:index, :show, :new, :create]
end