Rails.application.routes.draw do
  devise_for :users, :controllers => {:users => "users"}

  namespace :api do
    namespace :v1 do
      devise_scope :user do
        get 'login', to: 'devise/sessions#new'
      end
    
      devise_scope :user do 
        get 'signup', to: 'devise/registrations#new'
      end

      resources :users do
        resources :rvs, only: [:index, :show]
      end

    end
  end
  

end
