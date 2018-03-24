Rails.application.routes.draw do
  devise_for :administrators
  devise_for :learners
  devise_for :teachers

  mount RailsAdmin::Engine => "/administrator", as: "rails_admin"

  namespace :api do
    namespace :v1 do
      resources :topics, only: :update
    end
  end

  namespace :teachers do
    resource :dashboard, only: :show

    resources :materials, only: %i[create destroy]

    resources :courses do
      resources :topics, shallow: true, except: :index do
        resources :questions, shallow: true, only: %i[create update destroy] do
          resources :answer_variants, shallow: true, only: %i[create destroy]
        end
        resources :materials, shallow: true, only: %i[create destroy]
      end
    end
  end

  namespace :learners do
    resource :dashboard, only: :show

    resources :available_courses, only: :index
    resources :course_participations, only: %i[create destroy]
    resources :courses, only: %i[index show]
    resources :topics, only: :show
  end

  authenticated :administrator do
    root to: "rails_admin/main#dashboard", as: :administrator_root
  end

  authenticated :teacher do
    root to: "teachers/dashboard#show", as: :teacher_root
  end

  authenticated :learner do
    root to: "learners/dashboard#show", as: :learner_root
  end

  get "pages/welcome"

  root to: "pages#welcome"
end
