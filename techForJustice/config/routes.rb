Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :document_steps
  resources :dependencies
  resources :documents

 get '/all_doc_steps', to: 'documents#show_all_steps'
end
