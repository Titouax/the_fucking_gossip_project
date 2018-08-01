Rails.application.routes.draw do

  resources :gossips
  root to: 'static_pages#home'
  get 'gossips/new'
  get 'gossips/edit', to: 'gossips#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
