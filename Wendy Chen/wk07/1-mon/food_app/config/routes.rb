Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  resources :products

    #controller # action/method
    #pages_controller.rb # def about
    get '/products', to: 'products#index'


    get '/', to: 'products#index'
end
