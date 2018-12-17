Rails.application.routes.draw do
  root                        'static_pages#home'
  get     'help'           => 'static_pages#help'
  get     'about'          => 'static_pages#about'

  get     'planning/new'
  get     'planning/reference'

  get     'search'         => 'search#search'
  get     'search_result'  => 'search#search_result'
  get     'search_detail'  => 'search#search_detail'
  get     'time_line'      => 'search#time_line'

  root                    'static_pages#home'
  get     'help'      =>  'static_pages#help'
  get     'about'     =>  'static_pages#about'
  get     'signup'    =>  'users#new'
  get     'login'     =>  'sessions#new'
  post    'login'     =>  'sessions#create'
  delete  'logout'    =>  'sessions#destroy'
  get                     'sessions/new'

  get     'add_spot'  =>  'spot#new'
  post    'productes' =>  'spot#commit_product'
  get     'reg_spot'  =>  'spot#create_s'
  post    'spots'     =>  'spot#create'
  get     'complete_spot' =>  'spot#complete'


  resources :users


end
