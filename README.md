
Rails summary, mapping code and rubyonrails.org for my reference.

1. Routes
    Resources  
        resources :photos
    Multiple Resources
        resources :photos, :books, :videos
    Controller Namespaces and Routing   
        namespace :admin do
          resources :articles, :comments
        end

        