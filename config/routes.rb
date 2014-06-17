Rails.application.routes.draw do

  root 'theaters#index'

  resources :theaters do
    resources :plays
  end

end
