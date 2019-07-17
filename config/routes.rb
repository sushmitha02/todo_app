Rails.application.routes.draw do

	get 'user/show'
  get 'user/edit'
  put 'user/update'

  devise_for :users
  get 'page/home'

  root to: 'page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
