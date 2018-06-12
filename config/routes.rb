Rails.application.routes.draw do
  root 'page#post_url'

  get 'page/redirect_url'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
