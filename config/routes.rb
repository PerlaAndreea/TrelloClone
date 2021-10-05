Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"

  resources :cards do
    member do
      patch :move
    end
  end
  resources :lists do
    member do
      patch :move
    end
  end
end
