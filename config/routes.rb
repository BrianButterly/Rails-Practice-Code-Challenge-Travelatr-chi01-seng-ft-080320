Rails.application.routes.draw do
  patch "/posts/:id", to: "posts#like", as: "like"

  resources :bloggers
  resources :destinations
  resources :posts
  root to: "bloggers#index"
end
