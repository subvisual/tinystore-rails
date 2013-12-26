TinystoreRails::Application.routes.draw do
  resources :stores

  root to: "stores#new"
end
