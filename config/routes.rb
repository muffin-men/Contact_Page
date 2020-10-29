Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #フォームページで問い合わせ内容入力
  #送信したら送信完了ページに遷移する
  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
  end
end
