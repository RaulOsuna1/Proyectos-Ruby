Rails.application.routes.draw do
  resources :articles
  resources :users
  #get "/articles"
  #post "/articles"
  #delete "/articles"
  #get "/articles/:id"
  #get "/articles/new"
  #get "/articles/:id/edit"
  #patch "/articles/:id"
  #put "/articles/:id"
  get 'welcome/index'
  #get 'secret', to: "welcome#index" configurar ruta a gusto
  #get 'special', to: "welcome#index" reenombrar pagina
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
