Rails.application.routes.draw do

  get 'planning/new'

  get 'planning/reference'

  get     'search'    => 'search#search'

  get     'search_result'  => 'search#search_result'

  get     'search_detail/:spot_id'  => 'search#search_detail' , as:'search_detail'

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

  post    'favorite/:spot_id' => 'favorite#create'  , as:'fav'
  delete  'favorite/:spot_id' => 'favorite#destroy' , as:'unfav'

  post    'iine/:spot_id' => 'iine#create'  , as:'iine'
  delete  'iine/:spot_id' => 'iine#destroy' , as:'uniine'
end
