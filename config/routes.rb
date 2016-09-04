Rails.application.routes.draw do
  devise_for :usuarios
  resources :horarios
  resources :usuarios
  resources :servicos
  resources :produtos
  resources :piteus
  resources :pedidos
  resources :lojas
  resources :localizacoes
  resources :gerais
  resources :fotografias
  resources :carrinhos
  resources :alugueres
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "gerais#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch 'gerais/:id/add_to_cart' => 'gerais#add_to_cart', :as => 'add_to_cart'
  patch 'carrinhos/:id/fazer_comprar' => 'carrinhos#fazer_comprar', :as => 'fazer_comprar'

end
