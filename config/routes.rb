Rails.application.routes.draw do
  get 'static_pages/home', to: 'static_pages#home'  
  # you’re saying get the URL .com/static_pages/home and have it correspond to the code in the controller static_pages and specifically home method

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :apartments
end
