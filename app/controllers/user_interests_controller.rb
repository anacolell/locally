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
    if user_interest.save
      redirect_to new_user_interest_path
    end
  end

  def destroy
    interest = Interest.find(params[:interest].to_i)
    interest.destroy
    redirect_to new_user_interest_path
  end
end
