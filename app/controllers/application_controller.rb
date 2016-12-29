class ApplicationController < ActionController::Base
   protect_from_forgery with: :null_session

   before_action do
      @current_user = User.find_by id: session[:user_id]
  end
end
