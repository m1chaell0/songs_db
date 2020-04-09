Rails.application.routes.draw do
  resources :albums do
    resources :songs, shallow: true
  end

  resources :groups, shallow: true do
    resources :artists
    resources :albums
  end

end
