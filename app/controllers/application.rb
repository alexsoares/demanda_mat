# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time


  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '13eef2cb7ce9ce3bb6c0f579cdd762d6'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
end
GRAU = {'Mãe' => 'Mãe', 'Pai' => 'Pai', 'Avó' => 'Avó', 'Avô' => 'Avô', 'Tia' => 'Tia', 'Tio' => 'Tio', 'Irmã' => 'Irmã', 'Irmão' => 'Irmão', 'Tutor' => 'Tutor', 'Outros' => 'Outros'}
