class RegistrationsController < Devise::RegistrationsController
  before_action :set_collections, only: [:new, :create, :edit, :update]
  private
  def set_collections
    @preferences = Preference.all
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :city, :facebook,
                                 :twitter, :email, :password,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :city, :facebook,
                                 :twitter, :email, :password,
                                 :password_confirmation, :current_password)
  end
end
