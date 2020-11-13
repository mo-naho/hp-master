Rails.application.routes.draw do

  get 'gallery/index'
  get 'gallery', to:'gallery#index'

  get 'games/index'
  get 'games', to:'games#index'

  get 'hackathon_a/index'
  get 'hackathon_a', to:'hackathon_a#index'

  get 'hackathon_b/index'
  get 'hackathon_b', to:'hackathon_b#index'

  get 'clover/index'
  get 'clover', to:'clover#index'

  mount Ckeditor::Engine => '/ckeditor'
  get 'yozawiza/top'
  get 'yozawiza', to:'yozawiza#top'

  get 'yozawiza/about'

  get 'yozawiza/system'

  get 'yozawiza/spec'

  get 'yozawiza/movie'

  get 'top/about'

  get 'top/system'

  get 'top/spec'

  get 'top/movie'

  root :to => 'home#index'

  get 'hackathon2/index'
  get 'hackathon2', to:'hackathon2#index'

  get 'hackathon/index'
  get 'hackathon', to:'hackathon#index'

  resources :events

  resources :topics

  resources :categories

  resources :admin
  resources :contacts, except: [:show, :edit, :update ,:destroy]

  get 'products/index'
  get 'products', to:'products#index'
  get 'products/about'
  get 'products/system'
  get 'products/character'
  get 'products/download'

  get 'festivals/index'
  get 'festivals', to:'festivals#index'
  get "/festival/" => redirect("/festivals/index")
  get "/festival/index" => redirect("/festivals/index")

  resources :images, except: [:show, :edit, :update]

  get 'home/index'
  get 'home', to:'home#index'
  get 'home/activity'
  get 'home/news'
  get 'home/event'

  devise_for :accounts

  devise_scope :account do
    get '/accounts/sign_out' => 'devise/sessions#destroy'
  end

  as :account do
    get 'accounts/edit' => 'devise/registrations#edit', :as => 'edit_account_registration'
    put 'accounts' => 'devise/registrations#update', :as => 'account_registration'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
