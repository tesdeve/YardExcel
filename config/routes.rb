Rails.application.routes.draw do
  root 'pages#home'
  resources :tracks
  resources :dsps
end



# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html