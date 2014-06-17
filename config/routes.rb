Rails.application.routes.draw do
  resources :theaters

  root 'theaters#index'

  resources :theaters do
    resources :plays
  end

end
