Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :medications
      resources :emergencycontacts
      resources :conditions
      resources :doctors
    end
  end

end
