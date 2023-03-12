Rails.application.routes.draw do
  resources :customers
  root to: 'welcome#index' # welcome controller and acction index
end
