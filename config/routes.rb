Rails.application.routes.draw do
  resources :students, only: :index

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  get "/students/:id", to: "students#show", as: "student"
  get "/students/:id/edit", to: "students#edit", as: "edit_student"
  patch "/students/:id", to: "students#update"
  get "/students/:id/activate_student", to: "students#activate", as: "activate_student"
  # post "/students", to: "students"
  # get "/students/:id/update", to: "students#update"
end
