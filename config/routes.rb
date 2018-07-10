Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/resume', to: 'resume#index'
end
