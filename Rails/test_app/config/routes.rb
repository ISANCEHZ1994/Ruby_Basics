Rails.application.routes.draw do
  
  # root 'application#hello'

  # Ruby is smart enough to know that you mean <application_controller.rb> file 
  # routes always looks at the controller folder 
  # so think <fileName>#<methodName> - we are looking for the hello method inside of application file   


  # Offically:
  # Define a route that points to a controller#action
  root 'page#home'
  resources :pages

end
