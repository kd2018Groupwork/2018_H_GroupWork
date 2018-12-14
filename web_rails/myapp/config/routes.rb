Rails.application.routes.draw do
  root                        'static_pages#home'
  get     'help'           => 'static_pages#help'
  get     'about'          => 'static_pages#about'

  get     'planning/new'
  get     'planning/reference'

  get     'search'         => 'search#search'
  get     'search_result'  => 'search#search_result'
  get     'search_detail'  => 'search#search_detail'

  root                    'static_pages#home'
  get     'help'      =>  'static_pages#help'
  get     'about'     =>  'static_pages#about'
  get     'signup'    =>  'users#new'
  get     'login'     =>  'sessions#new'
  post    'login'     =>  'sessions#create'
  delete  'logout'    =>  'sessions#destroy'
  get                     'sessions/new'
  get     'add_spot'  =>  'tourist_spot#new'
  post    'productes' =>  'tourist_spot#commit_product'
  get     'reg_spot'  =>  'tourist_spot#create_s'
  post    'spots'     =>  'tourist_spot#create'
  get     'complete_spot' =>  'tourist_spot#complete'

  resources :users

end
