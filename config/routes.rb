TunrRails::Application.routes.draw do
  root :to => 'artists#index'

  resources :artists do
    resources :albums do
      resources :songs do
      end
    end
  end
end
