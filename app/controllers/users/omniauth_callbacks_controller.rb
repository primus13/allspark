class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    @identity = Identity.from_omniauth(request.env["omniauth.auth"])

    if @identity.persisted?
      sign_in_and_redirect @identity.user
    else
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def gplus
    @identity = Identity.from_omniauth(request.env["omniauth.auth"])

    if @identity.persisted?
      sign_in_and_redirect @identity.user
    else
      session["devise.gplus_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
