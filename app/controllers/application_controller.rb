class ApplicationController < ActionController::Base
    layout :resolve_layout
    before_action :authenticate_user!

    def after_sign_out_path_for(user)
        new_user_session_path
    end

    def after_sign_in_path_for(user)
        dashboard_path
    end

    private

    def resolve_layout
        case action_name
        when 'login', 'register'
        'authentication'
        else
        'dashboard'
        end
    end

end
