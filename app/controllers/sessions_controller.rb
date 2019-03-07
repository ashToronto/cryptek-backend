class SessionsController < ApiController
  #Sessions controller checks login credentials => true and will render a new JWT token
  #don't need to require login if user is created
   skip_before_action :require_login, only: [:create], raise: false

  def create
    if user = User.validate_login(params[:username], params[:password])
       allow_token_to_be_used_only_once_for(user)
       send_token_for_valid_login_of(user)
    else
      render_unauthorized("Error: you have entered an invalid username or password")
    end
  end

  def destroy
     logout
     head :ok
  end

  private
  def allow_token_to_be_used_only_once_for(user)
    user.regenerate_auth_token
  end

  def send_token_for_valid_login_of(user)
    render json: {token: user.auth_token}
  end

  def logout
    current_user.invalidate_auth_token
  end
end
