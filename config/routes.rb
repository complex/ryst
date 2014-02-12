Ryst::Application.routes.draw do

  root to: 'scans#index'

  resources :scans
  resources :locations do
    collection do
      get :current
    end
  end

end
