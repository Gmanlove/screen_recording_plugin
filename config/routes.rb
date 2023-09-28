Rails.application.routes.draw do
  resources :recordings, only: [:create, :index] # Add :index here
end
