Rails.application.routes.draw do
  root 'pages#home'

  get 'patrocinadores', to: 'pages#sponsors', as: 'sponsors'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
