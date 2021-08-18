Rails.application.routes.draw do
  get 'entries/index'
  get 'entries/new'
  get 'entries/create'
  get 'entries/show'
  get 'entries/edit'
  get 'entries/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
