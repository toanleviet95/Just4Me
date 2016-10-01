Rails.application.routes.draw do
  get 'bai_viets/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bai_viets
  get 'admin/index'
  get '/', to: 'bai_viets#index'
  get '/trang-chu', to: 'index#index'
  get '/admin', to: 'admin#index'
end
