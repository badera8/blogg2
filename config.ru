# This file is used by Rack-based servers to start the application.

map 'http://1ab8bda5433e4ddfb8235895c34887ca.testmyurl.ws/' do
     run Rails.application.routes.draw do
       get 'welcome/index'

       resources :articles do
         resources:comments
       end

       root 'welcome#index'
     end
end
