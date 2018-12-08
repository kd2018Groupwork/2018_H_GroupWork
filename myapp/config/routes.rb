Rails.application.routes.draw do

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
