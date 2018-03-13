Rails.application.routes.draw do
  resources :visits
  root 'welcome#index'
end
