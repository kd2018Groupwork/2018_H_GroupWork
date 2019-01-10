Rails.application.routes.draw do
  root                                 'static_pages#home'
  get     'help'                    => 'static_pages#help'
  get     'about'                   => 'static_pages#about'

  get     'search'                  =>  'static_pages#home'
  get     'search_result'           =>  'search#search_result'
  get     'search_detail/:spot_id'  =>  'search#search_detail' , as:'search_detail'
  get     'search/get_cities'       =>  'search#get_cities'
  get     'time_line'               =>  'search#_time_line'
  get     'search/auto_complete_product'   =>  'search#auto_complete_product'

  get     'signup'                  =>  'users#new'
  get     'login'                   =>  'sessions#new'
  post    'login'                   =>  'sessions#create'
  delete  'logout'                  =>  'sessions#destroy'
  get                                   'sessions/new'
  get     'show_spot'               =>  'users#show_spot'

  get     'add_spot'                =>  'spot#new'
  post    'products'                =>  'spot#commit_product'
  get     'reg_spot'                =>  'spot#create_s'
  post    'spots'                   =>  'spot#create'
  get     'spot/edit'               =>  'spot#edit', as:'spot_edit'
  patch   'commit'                  =>  'spot#commit', as:'commit'
  get     'complete_spot'           =>  'spot#complete'

  get     'favorite/show/:user_id'  =>  'users#fav_show' , as: 'fav_show'
  post    'favorite/:spot_id'       =>  'favorite#create'  , as:'fav'
  delete  'favorite/:spot_id'       =>  'favorite#destroy' , as:'unfav'
  
  post    'rate/:spot_id'           =>  'rate#create'  , as:'rate'
  delete  'rate/:spot_id'           =>  'rate#destroy' , as:'unrate'

  post    'comment/:spot_id'           =>  'comment#create'  , as:'comments'
  delete  'comment/:spot_id'           =>  'comment#destroy' , as:'uncomment'

  get     'offer'                   =>  'offer#index'
  post    'offer/confirm'           =>  'offer#confirm'
  post    'offer/complete'          =>  'offer#complete'

  get     'planning_index'          =>  'planning#index'
  post    'planning_create'         =>  'planning#create', as:'plans'
  get     'planning_show'           =>  'planning#show'
  get     'plan_detail/:plan_id'    =>  'planning#plan_detail', as:'plan_detail'
  delete    'planning/destroy/:id'        =>  'planning#destroy', as: 'plan_destroy'
  get     'complete_planning'       =>  'planning#complete'

  resources :prans
  resources :users

end
