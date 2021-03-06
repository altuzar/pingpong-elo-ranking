Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "home#index"
  get '/history', to: 'home#history'
  get '/log',     to: 'home#log'
  post '/log',    to: 'home#log_create', as: :log_create
end
