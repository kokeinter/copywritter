Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'copies#index'
  resources :users
  resources :odais do
    resources :copies do
      resources :comments
    end
  end
end
