Rails.application.routes.draw do
  resources :lessons
  resources :courses
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end