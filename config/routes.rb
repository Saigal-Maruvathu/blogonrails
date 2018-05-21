Rails.application.routes.draw do
  get 'home/index'
  get 'remarks/index'
  get 'posts/index'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :remarks
  end

  root to: "home#index"

end
