Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bai_viets
  get '/', to: 'bai_viets#index'
  get '/trang-chu', to: 'bai_viets#index'
  get '/admin', to: 'admin#index'
  get '/bai-viet/:id', to: 'bai_viets#show'
  post '/tai-khoan/login', to: 'tai_khoans#login'
  get '/tai-khoan/logout', to: 'tai_khoans#logout'
  get '/admin/new', to: 'admin#new'
end
