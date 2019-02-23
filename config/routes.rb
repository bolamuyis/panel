Rails.application.routes.draw do

  devise_for :users
  resources :students
  resources :cohorts
  resources :courses
  resources :teachers
  resources :studentcohorts

  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
