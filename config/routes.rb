Rails.application.routes.draw do
  root 'items#index'
  get 'items' => 'items#form'
  get 'phone' => 'items#phone'
end
