Rails.application.routes.draw do

  devise_for :users #, :controllers => { registrations: 'registrations' }
  #devise_for :users ,:controllers => { registrations: 'registrations' }
  root 'document_groups#index'
 
  resources :user_groups
  resources :document_groups do
     resources :documents,only: [:new, :show], shallow: true
   end
  resources :documents


  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
