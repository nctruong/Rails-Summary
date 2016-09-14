Rails.application.routes.draw do
  resources :articles
  resources :comments
  # single Route
  get 'photos/singleRoute'

=begin
  Explain syntaxes:
    get or => mean url
    as: means path
=end
  
  # url is "/admin", using rails_admin_path instead of admin_path
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # multiple resources
  resources :photos, :videos, :books
  
  # namespace + resources link
  namespace :manager do
    resources :articles, :comments
  end
  namespace :admin do
    resources :articles, :comments
  end
  
  # single case 
  resources :photos, module: 'admin'
  # GET    /photos(.:format)                    admin/photos#index
  
  # or using scope instead of "module"
  scope '/admin' do
    resources :videos
  end
  # GET    /admin/videos(.:format)              videos#index
end
