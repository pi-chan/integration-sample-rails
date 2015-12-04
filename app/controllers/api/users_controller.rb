class Api::UsersController < Api::ApiController
  def show
    @user = current_user
  end
end
