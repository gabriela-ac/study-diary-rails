Rails.application.routes.draw do
  root to: 'study_items#index'

  resources :study_items
end
