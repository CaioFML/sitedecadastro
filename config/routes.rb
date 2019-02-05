Rails.application.routes.draw do


  resources :departamentos
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  #evita de usar get, delete, post... se utilizar o resources
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  root to: "produtos#index"

end
