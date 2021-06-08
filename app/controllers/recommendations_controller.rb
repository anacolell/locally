class RecommendationsController < ApplicationController

  def new
    authorize current_user
    @recommendation = Recommendation.new
    # @user = current_user
  end

  def create
    authorize current_user
    @recommendation = Recommendation.new(recommendation_params)
    @recommendation.user_id = current_user.id
    @recommendation.save
    redirect_to profile_path(current_user.id)
    #redirect_to new_recommendation_path(anchor: "interest-#{interest.id}") if recommendation.save
  end

  def destroy
    authorize current_user
    recommendation = Recommendation.find(params[:id])
    current_user.recommendations.destroy(recommendation)
    redirect_to profile_path(current_user.id)
    # user_interest = UserInterest.where(interest_id: interest, user_id: current_user).destroy
    # user_interest.destroy
    #redirect_to new_user_interest_path(anchor: "interest-#{interest.id}")
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:name, :location, :description, :pricing)
  end
end
