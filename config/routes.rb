Rails.application.routes.draw do

  #Routes for Welcome Controller
  get 'welcome/index'

  #Routes for Articles controller
  get 'articles/new'

  resources :articles do
    resources :comments
  end
  # The default root
  root 'welcome#index'
end
