Rails.application.routes.draw do
  resources :profile, :trackers, :points

  # get 'history_show/:id' => 'history_show#shows', as: 'history_show'

  ActiveAdmin.routes(self)
  devise_for :users
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact',   to: 'static_pages#contact'

  get 'api_for_trackers/validate_tracker'
  get 'api_for_trackers/aaaa'
  get 'api_for_trackers/accept_message'
end
