Rails.application.routes.draw do
  root 'mixtapes#index'

  resources :mixtapes, shallow: true do
    resources :tracks
  end

  resources :tracks do
    member do
      patch :move_up
      patch :move_down
    end
  end
end
