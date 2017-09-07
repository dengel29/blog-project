Rails.application.routes.draw do
  resources :posts
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'tags/:tag', to: 'posts#index', as: :tag
  mount Ckeditor::Engine => '/ckeditor'
end
