Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    root to: 'contacts#index'
    resources :users
    resources :dept_titles
    resources :contacts
  end
end