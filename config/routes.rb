Rails.application.routes.draw do
  
  get 'movies/index'

  get 'movies' => 'movies#index'
  # root 'welcome#index'

end
