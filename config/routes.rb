Rails.application.routes.draw do
  # rails g model Restaurant name address phone_number category
  # rails db:migrate   
  # rails generate controller restaurants

  # rails g model reviews content:text rating:integer restaurant:references
  # rails generate controller reviews

  resources :restaurants do
    resources :reviews, only: [ :new, :create]
  end
end
