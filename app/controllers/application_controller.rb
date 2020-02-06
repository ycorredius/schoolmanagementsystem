class ApplicationController < ActionController::Base
    before_action :authenticate_admin!
    def after_sign_in_path_for(resource)
        admin_path(current_admin)
    end
end
