Rails.application.routes.draw do


 
  #resources :invitezs
  #resources :inviters


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "events/filter/:filter" => "events#index", as: :filtered_events
  # Defines the root path route ("/")
  root to: "events#index"

  resources :events do
    resources :registrations, except: [:show]
    resources :users do
      resources :kombidas, only: [:create, :destroy]
      resources :invitees, only: [:create, :destroy]
    end
  end

  resources :users   
    #resources :userinvts
    #resources :registrations, except: [:show]
  #resources :userinvs
  

  # get "events/event_id"
    
end
