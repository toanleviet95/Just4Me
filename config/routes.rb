Rails.application.routes.draw do
  get 'admin/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'index#index'
  get '/trang-chu', to: 'index#index'
  get '/admin', to: 'admin#index'
end
