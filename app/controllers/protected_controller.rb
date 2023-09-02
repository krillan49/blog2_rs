class ProtectedController < ApplicationController
  before_action :admin?, only: %i[users_list]

  def users_list
    @users = User.all
  end

  private

  def admin?
    unless user_signed_in? && current_user.try(:admin?)
      redirect_back fallback_location: root_path, notice: 'User is not admin'
    end
  end
end
