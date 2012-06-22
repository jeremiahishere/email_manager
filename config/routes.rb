# Adds routes for the three controller methods to the parent project
Rails.application.routes.draw do
  namespace :email_manager do
    resources :managed_emails, :only => [:index, :show] do
      member do
        get :body
      end
    end
    root :to => "managed_emails#index", :as => :root
  end
end
