class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @users = policy_scope(User)
  end

  def show
    @user = current_user
    authorize @user
  end

  def edit
    @user = current_user
    authorize @user
  end
end
