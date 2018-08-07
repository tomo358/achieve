Rails.application.routes.draw do
  root 'tops#tops'

  resources :blogs do
    collection do
      post :confirm
    end
  end
  
  resources :sessions, only:[:new,:create,:destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  resources :contacts

  if Rails.env.development?
    mount LetterOpenerWeb::Engine,at:"/letter_opener"
  end
end
