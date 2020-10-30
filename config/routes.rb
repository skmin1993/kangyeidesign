
Rails.application.routes.draw do
  get 'welcome/index'
 
  root 'welcome#index'

  resources :about, only: [:index] do
  end

  resources :contact_us, only: [:index] do
  end

  resources :product, only: [:index] do
     collection do
      get :packaging
      get :menu_book
      get :company
    end
  end

end

