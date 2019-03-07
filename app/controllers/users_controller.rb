class UsersController < ApiController
  #before we do anything we need to be logged in
  #unless we are already logged in
  #create! = returens user that was created
  #create without ! returns boolean

  before_action :require_login, except: [:create]

  def create
    user = User.create!(user_params)
    render json: { token: user.auth_token }
  end

  #Get request for profile will reach here
  def profile
    user = User.find_by_auth_token!(request.headers[:token])
    render json: { user:
      {
      username: user.username,
      email: user.email,
      name: user.name
      }
    }
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :name, :email)
  end
end
