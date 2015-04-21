Rails.application.routes.draw do
  root 'pages#home'

  get 'patrocinadores', to: 'pages#sponsors', as: 'sponsors'
  get 'palestrantes', to: 'pages#speakers', as: 'speakers'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
