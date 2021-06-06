class UserInterestsController < ApplicationController
  def new
    @interests = Interest.all
    @categories = InterestCategory.all
    @user = current_user
    authorize @user
  end

  def create
    authorize current_user
    interest = Interest.find(params[:interest].to_i)
    user_interest = UserInterest.new(user: current_user, interest: interest)
    redirect_to new_user_interest_path(anchor: "interest-#{interest.id}") if user_interest.save
  end

  def destroy
    authorize current_user
    interest = Interest.find(params[:id])
    current_user.interests.destroy(interest)
    # user_interest = UserInterest.where(interest_id: interest, user_id: current_user).destroy
    # user_interest.destroy
    redirect_to new_user_interest_path(anchor: "interest-#{interest.id}")
  end
end
