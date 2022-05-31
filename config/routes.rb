Rails.application.routes.draw do
  resources :pesquisas
  get 'welcome/index'
  root to: "welcome#index"
end
