Rails.application.routes.draw do
    resources :blogs do
        member do
            get :likeup
        end
        resources :replies, only: [:create]

    end
    root 'blogs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
