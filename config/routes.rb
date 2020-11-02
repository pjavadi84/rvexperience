Rails.application.routes.draw do
  
  root to: 'companies#index'

  namespace :api do
    namespace :v1 do
      # Company and company has nested associations with rvs
      resources :companies

      post "/login", to: "companies#login"
      get "/auto_login", to: "companies#auto_login"
      
      resources :companies do
        resources :rvs
      end

      # User and user has nested association with reservation
      resources :users


      resources :users do
        resources :reservations
      end 

      resources :users do
        resources :comments
      end

      resources :users do
        resources :destinations
      end

      resources :users do
        resources :likes
      end

      # RVs and Rv has nested association with reservations
      resources :rvs

      resources :rvs do
        resources :reservations
      end

      resources :rvs do
        resources :comments
      end
    


    end
  end

      

  
    
      # # devise scope for company:
      # devise_scope :company do
      #   get 'login', to: 'devise/sessions#new'
      # end
    
      # devise_scope :company do 
      #   get 'signup', to: 'devise/registrations#new'
      # end
  end
