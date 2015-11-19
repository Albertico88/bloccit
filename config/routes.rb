Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  root to: 'welcome#index'
  # The root method allows us to declare the default page your app loads when we type the home page URL.
end
