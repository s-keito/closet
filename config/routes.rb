Rails.application.routes.draw do
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

root to: "homes#top"
get 'homes/about'

  namespace :public do
    resources :dresses, only: [:new, :create, :index, :show, :destroy]
    resources :users, only: [:show, :index, :edit, :update]
     devise_scope :user do
     post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
     end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
