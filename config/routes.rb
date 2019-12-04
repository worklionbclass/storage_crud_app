Rails.application.routes.draw do
  root "posts#index"
  
  get 'posts/new'
  post 'posts/create'
  get 'posts/index'
  
  get 'posts/show/:id' => "posts#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
