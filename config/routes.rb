Rails.application.routes.draw do
  resources :posts, only: %i[index create] do
    get 'like'
    get 'repost'
  end
  
  root to: 'posts#index'
end
