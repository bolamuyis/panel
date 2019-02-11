Rails.application.routes.draw do

  resources :students
  resources :cohorts
  resources :courses
  resources :teachers
  resources :studentcohorts

  root 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
