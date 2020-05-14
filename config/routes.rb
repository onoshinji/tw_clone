Rails.application.routes.draw do
    resources :tweet_clones do
      collection do
        post :confirm
      end
    end
end
