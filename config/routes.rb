Rails.application.routes.draw do
  get 'theaters/index'

  get 'theaters/show'

  get 'theaters/new'

  root to: 'theater#index'

  resources :theaters do
    resources :plays
  end

end
