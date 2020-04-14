Rails.application.routes.draw do

  resources :bookings
  resources :pravites,except:[:show]
  resources :shareds,except:[:show]
  resources :complaints,except:[:edit,:update] do
    resources :feedbacks
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'mainpage#main_register'
  get 'residents', to: 'mainpage#residents'
  get 'deluser/:user_id', to: 'mainpage#deluser',as:'deluser'
  get 'user_profile/:user_id', to: 'mainpage#user_profile',as:'profile'
  get 'add_security', to: 'mainpage#add_security',as:'security'
  get 'save_details', to: 'mainpage#save_as_security',as:'securitydetails'
  get 'maintenance', to: 'mainpage#maintenance',as:'maintenance'
  get 'view_feedback', to: 'mainpage#view_feedback',as:'view_feedbacks'
  get 'users_maintenance', to: 'mainpage#users_maintenance',as:'users_maintenance'
  # get 'save_as_security', to: 'mainpage#save_as_security',as:'save_as_security'
  get 'search' => 'pravites#search', :as => 'search_page'
  # get 'new',to: 'mainpage#new',as:'add_security'
  # get 'create',to:'mainpage#create',as:'save_security'

  # get "shared_complaints",to:'complaint#sharedcomplaint'
  get 'sharedcomplaints',to:'complaints#sharedcomplaints'
  get 'notifications',to:'complaints#notification'
  get 'solve/:id',to:'mainpage#solve',as:'solve'
  get 'solvedComplaints',to:'complaints#solved'
end
