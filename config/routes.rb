Rails.application.routes.draw do
  root 'mixtapes#index'

  resources :mixtapes

end
