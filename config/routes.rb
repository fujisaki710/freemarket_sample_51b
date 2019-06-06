Rails.application.routes.draw do
  root 'items#index'
  get 'items' => 'items#form'
  get 'phone' => 'items#phone'
  get 'address' => 'items#address'
end
