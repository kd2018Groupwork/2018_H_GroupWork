Rails.application.routes.draw do

  root                                 'static_pages#home'
  get     'help'                    => 'static_pages#help'
  get     'about'                   => 'static_pages#about'

  get     'planning/new'
  get     'planning/reference'

  get     'search'                  => 'static_pages#home'
  get     'search_result'           => 'search#search_result'
  get     'search_detail/:spot_id'  => 'search#search_detail' , as:'search_detail'
  get     'time_line'               => 'search#_time_line'

  get     'signup'                  =>  'users#new'
  get     'login'                   =>  'sessions#new'
  post    'login'                   =>  'sessions#create'
  delete  'logout'                  =>  'sessions#destroy'
  get                                   'sessions/new'

  get     'add_spot'                =>  'spot#new'
  post    'products'               =>  'spot#commit_product'
  get     'reg_spot'                =>  'spot#create_s'
  post    'spots'                   =>  'spot#create'
  get     'complete_spot'           =>  'spot#complete'

  get     'favorite/show/:user_id'  => 'favorite#show' , as: 'fav_show'
  post    'favorite/:spot_id'       => 'favorite#create'  , as:'fav'
  delete  'favorite/:spot_id'       => 'favorite#destroy' , as:'unfav'
  
  post    'rate/:spot_id'           => 'rate#create'  , as:'rate'
  delete  'rate/:spot_id'           => 'rate#destroy' , as:'unrate'

  get     'offer'                   =>  'offer#index'
  post    'offer/confirm'           =>  'offer#confirm'
  post    'offer/complete'          =>  'offer#complete'


  resources :users

end
