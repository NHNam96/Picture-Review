Rails.application.routes.draw do
  devise_for :users
  resources :pictures
  get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  root 'static_pages#home'
  mount Commontator::Engine => '/commontator'

end
