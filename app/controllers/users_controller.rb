class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
    # authorize @users

    if params[:query].present?
      @users = User.where("location ILIKE ?", "%#{params[:query]}%")
    else
      # which params do are there when user clicks adventurous option?
      @users = User.all
    end
  end
end
