Rails.application.routes.draw do

  resources :lists, only: %i[index show new create]
  resources :bookmarks, only: %i[show]
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
end
