Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index', as: 'home'

  resources :cocktails do #, only [:index, :show, :new, :create]
    resources :doses
  end
end
