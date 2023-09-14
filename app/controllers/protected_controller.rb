class ProtectedController < ApplicationController
  before_action :admin?

  def index # get 'protected'
    @users = User.all
  end

  def show # get 'protected/:id'
    @user = User.find(params[:id])
  end

  private

  def admin?
    unless user_signed_in? && current_user.try(:admin?)
      # redirect_back fallback_location: root_path, notice: 'User is not admin'
      redirect_to root_path, notice: 'User is not admin'
    end
  end
end
