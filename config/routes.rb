Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :new, :create]
      resources :baselinks, only: [:index, :show]
      resources :userlinks, only: [:new, :create]
    end
  end


  # namespace :api do
  #   namespace :v1 do
      
  #   end
  # end

end
