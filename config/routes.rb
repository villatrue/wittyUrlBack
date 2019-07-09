Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :baselinks, only: [:index, :show]
    end
  end


  # namespace :api do
  #   namespace :v1 do
      
  #   end
  # end

end
