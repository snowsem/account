Rails.application.routes.draw do

  get 'issue_comment/index'

  get 'issue_comment/edit'

  get 'issue_comment/create'

  get 'issue_comment/add'

  get 'issue/index'

  get 'issue/create'

  get 'issue/new'

  get 'issue/edit'

  get 'outlet/index'

  get 'outlet/new'


  post 'outlet/create'

  get 'outlet/destroy'

  get 'outlet/edit'

  get 'balance/index'
  get 'balance', to: 'balance#index'
  get 'issues', to: 'issue#index'
  get 'issue/:id', to: 'issue#show'
  post 'issue/create', to: 'issue#create'
  post 'issue/add', to: 'issue#add'

  get 'balance/create'

  get 'balance/new'

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
