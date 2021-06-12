class RecommendationsController < ApplicationController

  def new
    authorize current_user
    @recommendation = Recommendation.new
  end

  def create
    authorize current_user
    @recommendation = Recommendation.new(recommendation_params)
    @recommendation.user_id = current_user.id
    @recommendation.save
    redirect_to profile_path(current_user.id)
  end

  def destroy
    authorize current_user
    recommendation = Recommendation.find(params[:id])
    current_user.recommendations.destroy(recommendation)
    redirect_to profile_path(current_user.id)
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:name, :location, :description, :pricing, :photo)
  end
end
