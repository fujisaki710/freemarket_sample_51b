Rails.application.routes.draw do
  root 'items#index'
  get 'items' => 'items#index2'
  get 'phone' => 'items#phone'
  get 'address' => 'items#address'
end
