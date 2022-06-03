Rails.application.routes.draw do
  get 'calculos/calcambul'
  get 'calculos/calcemerg'
  get 'calculos/calcintern'
  resources :pesquisas
  get 'pesquisas/index'
  root to: "pesquisas#index"

  get 'welcome/index'
end
