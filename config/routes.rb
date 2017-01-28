Rails.application.routes.draw do
  namespace :admin do
    resources :metrics, only: [:index, :show]
  end

  resources :metrics, only: [:edit, :update]
end
