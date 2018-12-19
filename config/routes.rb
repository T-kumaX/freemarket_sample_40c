Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  get 'items/detail' => "items#detail"
  resources :items
  get 'personal_datas/' => "personal_datas#identification"
  get 'personal_datas/method_of_payment' => "personal_datas#method_of_payment"
  get 'personal_datas/credit_card' => "personal_datas#credit_card"
  get 'personal_datas/purchase' => "personal_datas#purchase_confirmation"
  resources :users do
    collection do
      get 'profile'
      get 'mypage'
      get 'logout'
      get 'registration'
    end
  end
end

