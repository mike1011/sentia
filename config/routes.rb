Rails.application.routes.draw do
  
  root 'products#index'
    resources :products do
        collection { post :import }
    end
end
