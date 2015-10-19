Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  #instructs Rails to create post routes for creating,
  #updating, viewing, and deleting instances of Post

  resources :users, only: [:new, :create]
#only: creates routes for new and create only

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  root to: 'welcome#index'
  # The root method allows us to declare the default page your app loads when we type the home page URL.
end

# $ rake routes     Shows all routes
