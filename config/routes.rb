Ryst::Application.routes.draw do

  root to: 'scans#index'

  resources :scans

end
