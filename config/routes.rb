Rails.application.routes.draw do
  root to: 'study_items#index'

  resources :study_items do
    post 'mark_as_done', on: :member
  end
end
