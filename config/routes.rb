Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'
  # The root method allows us to declare the default page your app loads when we type the home page URL.
end
