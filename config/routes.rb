Rails.application.routes.draw do
  resources :beds
  resources :hospices

  get '/public_pages/about', as: 'about'
  get '/public_pages/contact_us', as: 'contact_us'
  get '/public_pages/legal', as: 'legal'
  get '/public_pages/privacy_policy', as: 'privacy_policy'
  
  root 'public_pages#home'  
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html