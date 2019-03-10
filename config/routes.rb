Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'goals#index'

  resources :goals do
    resources :milestones do
      resources :task
    end
  end

  resources :milestones do 
    resources :tasks
  end

  resources :tasks

end
