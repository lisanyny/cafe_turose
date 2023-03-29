Rails.application.routes.draw do

    #顧客用
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  #管理者用
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root to: "homes#top"

    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
    get "orders/complete" => "orders#complete"
    post "orders/confirm" => "orders#confirm"
    resources :orders, only: [:new, :create, :index, :show]
    resources :cart_items, only: [:index, :update, :create]
    delete "cart_items/delete_all", to: "cart_items#delete_all", as: "delete_all_cart_item"
    delete "cart_items/:id", to: "cart_items#destroy", as: "destroy_cart_item"
    resources :items, only: [:index, :show]
    resources :menus, only: [:index]
    get "menus/special", to: "menus#special", as: "special"
    get "menus/food", to: "menus#food", as: "food"
    get "menus/dessert", to: "menus#dessert", as: "dessert"
    get "meuns/drink", to: "menus#drink", as: "drink"
    resources :reserves, only: [:new, :create, :index, :edit, :update, :destroy]
    get "reserves/top", to: "reserves#top", as: "top"
    get "reserves/confirm", to: "reserves#confirm", as: "confirm"
    get "reserves/thanks", to: "reserves#thanks", as: "thanks"

    get "customers/my_page", to: "customers#show", as: "my_page"
    get "customers/information/edit", to: "customers#edit", as: "edit_information"
    patch "customers/information", to: "customers#update", as: "update_information"
    get "customers/confirm", to: "customers#confirm"
    patch "customers/thanks", to: "customers#thanks"

  end

  namespace :admin do
    root to: "homes#top"

    resources :orders, only: [:show, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :menus, only: [:index, :new, :create, :show, :edit, :update]
    resources :reserves, only: [:index, :show, :edit, :update, :destroy]
    resources :order_details, only: [:update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
