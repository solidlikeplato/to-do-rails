Rails.application.routes.draw do

  resources :authors do
    resources :todo_items
  end

  root "authors#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
