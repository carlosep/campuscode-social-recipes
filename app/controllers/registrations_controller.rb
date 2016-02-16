class RegistrationsController < Devise::RegistrationsController
  before_action :set_collections, only: [:create, :update]

  private

  def set_collections
    params[:user][:cuisines] = params[:user][:cuisines].join(', ').chomp(', ')
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :city, :facebook,
                                 :twitter, :email, :password, :cuisines,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :city, :facebook,
                                 :twitter, :email, :password, :cuisines,
                                 :password_confirmation, :current_password)
  end
end
