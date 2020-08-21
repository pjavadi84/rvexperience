Rails.application.routes.draw do
  devise_for :companies, :controllers => {:companies => "companies"}
  devise_for :users, :controllers => {:users => "users"}
 


  namespace :api do
    namespace :v1 do

      resources :companies do
        resources :rvs
      end

      resources :rvs, only: [:index, :show, :new, :create, :edit, :update]

      devise_scope :users do
        get 'login', to: 'devise/sessions#new'
      end
    
      devise_scope :users do 
        get 'signup', to: 'devise/registrations#new'
      end
    
      # # devise scope for company:
      # devise_scope :company do
      #   get 'login', to: 'devise/sessions#new'
      # end
    
      # devise_scope :company do 
      #   get 'signup', to: 'devise/registrations#new'
      # end

    end
  end

  #devise scope for user:
  






  

end
