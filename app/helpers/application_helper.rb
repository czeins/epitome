module ApplicationHelper

#Adds typekit helper
    def typekit_include_tag apikey
      javascript_include_tag("http://use.typekit.com/ruq7dqb.js") +
      javascript_tag("try{Typekit.load()}catch(e){}")
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorize
        redirect_to '/login' unless current_user
    end

end
