Rails.application.routes.draw do

  get 'planning/new'

  get 'planning/reference'

  get 'search/search'

  get 'search/search_result'

  get 'search/search_detail'

  root                    'static_pages#home'
  get     'help'      =>  'static_pages#help'
  get     'about'     =>  'static_pages#about'
  get     'signup'    =>  'users#new'
  get     'login'     =>  'sessions#new'
  post    'login'     =>  'sessions#create'
  delete  'logout'    =>  'sessions#destroy'
  get                     'sessions/new'
  get     'add_spot'  =>  'tourist_spot#new'
  post    'spots'     =>  'tourist_spot#create'
  get     'complete_spot' =>  'tourist_spot#complete'

  resources :users

end
