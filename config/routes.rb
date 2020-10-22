
Rails.application.routes.draw do
  get 'welcome/index'
 
  root 'welcome#index'


  resources :product, only: [:index] do
     collection do
      get :packaging
      get :menu_book
    end
  end

end