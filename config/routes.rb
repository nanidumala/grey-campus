Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :products
  root 'products#index'
  
get 'carts/:id' => "carts#show", as: "cart"
delete 'carts/:id' => "carts#destroy"


post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
post 'line_items' => "line_items#create"
get 'line_items/:id' => "line_items#show", as: "line_item"
delete 'line_items/:id' => "line_items#destroy"

get 'orders/:id/placed' => "orders#placed", as: "placed_order"


resources :support_requests, only: [ :index, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

