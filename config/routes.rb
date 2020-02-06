Rails.application.routes.draw do
  resources :users, except: [:index, :new]
  get 'terms', to: 'users#terms', as: :terms
  get '', to: 'users#new', as: :new_user
  get 'view_users', to: 'users#index', as: :view_users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
