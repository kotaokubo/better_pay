Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # rails routes コマンドでroutesみてくれ

  resources :shops do
    collection do
      get 'search'
      get 'count'
    end
  end

  # パスを作成することが可能
  root 'shops#search'
end
