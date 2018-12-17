Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items
  get 'personal_datas/' => "personal_datas#identification"
  get 'personal_datas/method_of_payment' => "personal_datas#method_of_payment"
  get 'personal_datas/credit_card' => "personal_datas#credit_card"
  resources :users do
    member do
      get 'profile'
      get 'mypage'
    end
    collection do
      get 'logout'
      get 'registration'
    end
  end
end

