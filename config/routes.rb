Rails.application.routes.draw do

  namespace :admin do
    get 'client/new'
  end

  namespace :admin do
    get 'client/show'
  end

  namespace :admin do
    get 'client/create'
  end

  namespace :admin do
    get 'client/update'
  end

  namespace :admin do
    get 'client/edit'
  end

  namespace :admin do
    get 'client/index'
  end

  devise_for :users

  root 'static#index'

  get 'static/index'

  get 'static/about'

  get 'static/contact'

  resource :cities
  namespace :admin do
    root 'static#index'

    get 'clients', to: 'client#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
