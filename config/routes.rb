Rails.application.routes.draw do

  resources :complaints,except:[:edit,:update] do
    resources :feedbacks
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'mainpage#main_register'
  get 'residents', to: 'mainpage#residents'
  get 'deluser/:user_id', to: 'mainpage#deluser',as:'deluser'
  get 'user_profile/:user_id', to: 'mainpage#user_profile',as:'profile'

  # get "shared_complaints",to:'complaint#sharedcomplaint'
  get 'sharedcomplaints',to:'complaints#sharedcomplaints'
  get 'notifications',to:'complaints#notification'
  get 'solve/:id',to:'mainpage#solve',as:'solve'
  get 'solvedComplaints',to:'complaints#solved'
end
