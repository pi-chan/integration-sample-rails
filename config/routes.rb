Rails.application.routes.draw do
  namespace :api, format: :json do
    resource :user, only: %i(show)
  end

  use_doorkeeper
  root 'home#index'
  devise_for :users, skip: [:registrations, :passwords], controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  use_doorkeeper
end
