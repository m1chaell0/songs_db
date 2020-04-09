Rails.application.routes.draw do
  resources :albums do
    resources :songs, shallow: true
  end

  resources :groups, shallow: true do
    resources :albums
  end

  resources :artists, shallow: true do
    resources :albums
  end

end
