Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :document_steps
  resources :dependencies
  resources :documents
  
  resources :documents do 
    resources :document_steps do
      resources :dependencies
    end
  end 

 get 'documents/all_doc_steps/:id', to: 'documents#show_all_steps'
end
