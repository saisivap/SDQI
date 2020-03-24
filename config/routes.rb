Rails.application.routes.draw do

  resources :complaints,except:[:edit,:update] do
    resources :feedbacks
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'mainpage#main_register'

  # get "shared_complaints",to:'complaint#sharedcomplaint'
  get 'sharedcomplaints',to:'complaints#sharedcomplaints'
  get 'notifications',to:'complaints#notification'
  get 'solve/:id',to:'mainpage#solve',as:'solve'
  get 'solvedComplaints',to:'complaints#solved'
end
