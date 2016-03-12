Rails.application.routes.draw do
  resources :courses
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_scope :users do
   root to: "active_admin/devise/sessions#new"
  end
end
