require "staff/engine"
require 'devise'

# module Staff
# end


module Staff
  class Engine < ::Rails::Engine
    config.to_prepare do
      Devise::SessionsController.layout "session"
      Devise::PasswordsController.layout "session"
      Devise::RegistrationsController.layout "session"
    end
  end
end