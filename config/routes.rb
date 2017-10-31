Ecm::Blog::Backend::Engine.routes.draw do
  resources :posts do
    post :toggle_published, on: :member
  end

  root to: 'home#index'
end