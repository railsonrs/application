# frozen_string_literal: true

Rails.application.routes.draw do
	
	# Application
	# @implemented
	root :to => 'home#index'
	resources :community,  :only => [:index]
	get '/who-is' => 'community#who_is', as: :who_is
	get '/code-of-condute' => 'community#code_of_condute', as: :code_of_condute
	resources :contribute, :only => [:index]
	resources :articles, 	 :only => [:index, :show]
	resources :events, 	   :only => [:index, :show]
end
