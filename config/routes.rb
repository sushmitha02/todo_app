Rails.application.routes.draw do

  resources :dashboards

	get 'user/show'
  get 'user/edit'
  put 'user/update'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'page/home'

  root to: 'page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
