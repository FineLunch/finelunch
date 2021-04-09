class ApplicationController < ActionController::Base
    layout :resolve_layout
    before_action :authenticate_user!

    def after_sign_out_path_for(user)
        login_path
    end

    def after_sign_in_path_for(user)
        dashboard_path
    end

    private

    def resolve_layout
        if devise_controller?
        'authentication'
        else
        'dashboard'
        end
    end

end
