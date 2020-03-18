Rails.application.routes.draw do
  resources :dogs, only: [:index, :show]
  resources :employees
end
