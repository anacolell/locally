class BookmarksController < ApplicationController
  def new
    authorize current_user
    @bookmark = Bookmark.new
    # @user = current_user
  end

  def create
    authorize current_user
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user_id = current_user.id
    @bookmark.recommendation_id = Recommendation.find(params[:id])
    @bookmark.save
    redirect_to profile_path(current_user.id)
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
