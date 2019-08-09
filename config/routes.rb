Rails.application.routes.draw do
  get 'checks/create'
  resources :lovings
  root 'lovings#index'
  get 'loves/check'
  get 'home/index'
  post 'checks/create'
  get 'home/index2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
