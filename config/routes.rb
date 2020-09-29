Rails.application.routes.draw do
  root to: 'welcome#index'

  devise_for :users
  resources :patients
  resources :doctors
  # resources :appointments
  get '/appointment/:id(.:format)', to: 'appointments#new', as: :new_appointment
  post '/appointment/:id(.:format)', to: 'appointments#create', as: :create_appointment
end
