Rails.application.routes.draw do
  get '/plants', to: 'plant#index'
  get '/plant/:id', to: 'plant#show'
  post 'plants', to: 'plant#create'
end
