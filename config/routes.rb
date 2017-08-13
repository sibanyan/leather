Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 管理者が記事を作成するために必要なセクションと記事を用意
  namespace :admin do
    resources :sections do
      resources :articles do
      end
    end
  end

end
