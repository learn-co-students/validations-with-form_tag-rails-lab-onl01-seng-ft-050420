Rails.application.routes.draw do
  resources :authors, :posts, only: [:show, :new, :edit, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
