class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
    # authorize @boats

    if params[:query].present?
      @users = User.where("location ILIKE ?", "%#{params[:query]}%")
    else
      # adventurous option => which params will be present?
      @users = User.all
    end
  end
end
