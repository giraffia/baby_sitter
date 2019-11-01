Rails.application.routes.draw do
  devise_for :sitters
  devise_for :parents
  root to: 'landing#index' # TODO generate landing_controller
end
