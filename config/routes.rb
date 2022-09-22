Rails.application.routes.draw do
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  scope module: :public do
    root to: 'homes#top'
    get "home/about" => "homes#about", as: "about"
    resources :dresses, only: [:new, :show, :index, :edit, :create, :update, :destroy]
    resources :users, only: [:show, :index, :edit, :update]
    #resources :comments
    #resources :favorites do
    #resources :rooms
    #resources :comments
  end

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }


  namespace :admin do
    root to: 'homes#top'
    resources :dresses
    resources :users
    #resources :categories
  end

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
