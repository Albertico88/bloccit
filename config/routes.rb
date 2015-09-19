Rails.application.routes.draw do
  resources :posts
  #instructs Rails to create post routes for creating,
  #updating, viewing, and deleting instances of Post

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  root to: 'welcome#index'
  # The root method allows us to declare the default page your app loads when we type the home page URL.
end
