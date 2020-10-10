Rails.application.routes.draw do
  root 'items#index'
  
  # 出品機能実装のための仮置きです
  resources :exhibitions, except: :show
end