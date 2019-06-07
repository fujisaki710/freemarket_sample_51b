Rails.application.routes.draw do
  root 'items#registration'
  get 'items' => 'items#form'
  get 'phone' => 'items#phone'
end
