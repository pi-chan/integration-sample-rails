class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_oauth(request.env["omniauth.auth"])
    @user.remember_me!

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", kind: "Facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook"] = request.env["omniauth.auth"]
      redirect_to root_url
    end
  end
end
