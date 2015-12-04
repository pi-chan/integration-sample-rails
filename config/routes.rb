Rails.application.routes.draw do
  use_doorkeeper
  root 'home#index'
  devise_for :users, skip: [:registrations, :passwords], controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  use_doorkeeper
end
