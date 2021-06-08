class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @users = policy_scope(User)
  end

  def show
    @user = current_user
    authorize @user
    @recommendations = Recommendation.all
    @recommendation_markers = @recommendations.geocoded.map do |recommendation|
      {
        lat: recommendation.latitude,
        long: recommendation.longitude,
        info_window: render_to_string(partial: "info_window", locals: { recommendation: recommendation })
      }
    end
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    current_user.update(user_strong_params)
    redirect_to profile_path
  end

  private

  def user_strong_params
    params.require(:user).permit(:first_name, :last_name, :gender, :birthdate, :location, :city, :country, :description, :photo, :languages => [])
  end
end
