Rails.application.routes.draw do
  resources :entries, only: [:index, :new, :create, :show, :edit, :update]
end
