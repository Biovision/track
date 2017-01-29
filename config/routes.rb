Rails.application.routes.draw do
  namespace :admin do
    resources :agents, only: [:index, :show]
    resources :browsers, only: [:index, :show] do
      get 'agents', on: :member
    end
    resources :metrics, only: [:index, :show]
  end

  namespace :api, defaults: { format: :json } do
    resources :browsers, :agents, except: [:new, :edit], concerns: [:toggleable, :lockable]
  end

  resources :agents, :browsers, except: [:index, :show]
  resources :metrics, only: [:edit, :update]
end
