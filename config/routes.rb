Rails.application.routes.draw do
  namespace :api do
    resources :diners do
      resources :menus
    end

    resources :menus do
      resources :items
    end
  end
end
