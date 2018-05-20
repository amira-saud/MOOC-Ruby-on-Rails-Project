Rails.application.routes.draw do
  #mount Ckeditor::Engine => '/ckeditor'
  resources :lectures
  resources :courses
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #match 'home', :to => "static#index"
  root :to => "static#index"

  resources :lectures do 
    member do
      put "like", to: "lectures#upvote"
      put "dislike", to: "lectures#downvote"
      post "spam"  =>"lectures#spam"
    end
  end
  mount Commontator::Engine => '/commontator'
  mount Ckeditor::Engine => '/ckeditor'
end
