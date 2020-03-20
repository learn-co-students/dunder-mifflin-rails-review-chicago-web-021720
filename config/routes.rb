Rails.application.routes.draw do
  resources :dogs, only: [:index, :show, :update]
  resources :employees, except: [:destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
