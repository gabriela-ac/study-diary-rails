Rails.application.routes.draw do
  root to: 'study_items#index'

  resources :study_items, only: [:index, :show, :new, :create]
end
