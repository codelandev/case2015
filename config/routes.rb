Rails.application.routes.draw do
  root 'pages#home'
  get 'aplicativo', to: 'pages#mobile_app', as: 'mobile_app'
  get 'programacao', to: 'pages#events', as: 'events'
  get 'expositores', to: 'pages#sponsors', as: 'sponsors'
  get 'palestrantes', to: 'pages#speakers', as: 'speakers'
  get 'patrocinadores', to: 'pages#exhibitors', as: 'exhibitors'
  get 'parceiros', to: 'pages#partners', as: 'partners'
  get 'mediapartener', to: 'pages#supporters', as: 'supporters'
  get 'blog', to: 'posts#index', as: 'posts'
  get 'blog/:id', to: 'posts#show', as: 'post'
  get 'evento', to: 'pages#about', as: 'about'
  get 'about', to: 'pages#about_en', as: 'about_en'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Ckeditor::Engine => '/ckeditor'
end
