Rails.application.routes.draw do

  devise_for :users
  root 'static#index'

  get 'static/index'

  get 'static/about'

  get 'static/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
