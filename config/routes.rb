Rails.application.routes.draw do
  # devise_scope :customers do
  #   get 'customers/sign_up' => 'devise/registrations#new'
  # end
  devise_for :customers, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
  }

  # get "todolists/new"
  # get "/top" => "homes#top"
  # post "todolists" => "todolists#create"
  # get "todolists" => "todolists#index"
  resources :todolists
end
