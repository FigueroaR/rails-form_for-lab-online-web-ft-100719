Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :students, only: [:index, :show, :new, :create, :edit, :update] 

    resources :school_classes, only: [:index, :show, :create, :edit, :update, :new]
    #get '/school_class/new', to: '/school_class/new', as: 'new_school_class'

end
