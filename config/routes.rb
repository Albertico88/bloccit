Rails.application.routes.draw do
  get 'sponsored_posts/show'

  get 'sponsored_posts/new'

  get 'sponsored_posts/edit'

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsoredposts
  end
  #instructs Rails to create post routes for creating,
  #updating, viewing, and deleting instances of Post

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  root to: 'welcome#index'
  # The root method allows us to declare the default page your app loads when we type the home page URL.
end

# $ rake routes     Shows all routes
