class ApplicationController < ActionController::Base
  protect_from_forgery
def after_sign_in_path_for(resource)
  logger.info("==========================================================#{stored_location_for(resource)}")
redirect_to "/" and return
end
end
