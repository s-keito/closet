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
    get 'users/show'
    get 'users/index'
    get 'users/edit'
  end
  namespace :public do
    get 'dresses/new'
    get 'dresses/show'
    get 'dresses/index'
    get 'dresses/edit'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
