Rails.application.routes.draw do
  resources :multipliers
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/:calc_grad" => "calc_grad#index"
end
