class BookmarksController < ApplicationController

  # def index
  #   @bookmarks = policy_scope(Bookmark)
  #   # authorize current_user
  # end

  def new
    @user = current_user
    @recommendation = Recommendation.find(params[:recommendation_id])
    @bookmark = Bookmark.new
    authorize @bookmark
    # @user = current_user
  end

  def create
    @recommendation = Recommendation.find(params[:recommendation_id])
    @user = @recommendation.user
    @bookmark = Bookmark.new(user_id: current_user.id, recommendation_id: @recommendation.id)
    authorize @bookmark
    @bookmark.save
    flash[:notice] = "A bookmark was created!"
    redirect_to user_path(@user)
    # else
    #   flash[:notice] = "This recommendation could not be bookmarked."
    # end
    #redirect_to new_recommendation_path(anchor: "interest-#{interest.id}") if recommendation.save
  end

  def destroy
    authorize current_user
    bookmark = Bookmark.find(params[:id])
    current_user.bookmarks.destroy(bookmark)
    redirect_to profile_path(current_user.id)
    # user_interest = UserInterest.where(interest_id: interest, user_id: current_user).destroy
    # user_interest.destroy
    #redirect_to new_user_interest_path(anchor: "interest-#{interest.id}")
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:user_id, :recommendation_id)
  end
end
