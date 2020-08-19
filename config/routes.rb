Rails.application.routes.draw do
  devise_for :companies, :controllers => {:companies => "companies"}
  devise_for :users, :controllers => {:users => "users"}
 


  namespace :api do
    namespace :v1 do

      resources :users do
        resources :rvs
      end

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
