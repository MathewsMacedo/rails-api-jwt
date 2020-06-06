Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :restrito do
      namespace :v1 do
        namespace :auth do
          post '/auth/login', to: 'authentication#login'
        end
      end
    end
  end
    resources :users, param: :_username
    get '/*a', to: 'application#not_found'

end
