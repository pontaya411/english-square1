Rails.application.routes.draw do
  devise_for :users
  root to: "englishtypes#index"
end
