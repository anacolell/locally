class UsersController < ApplicationController
  @tourist_interests_count = current_user.user_interests.count
  @locals = User.where.not(id: current_user.id)

  def index
    @users = policy_scope(User)
    authorize @users

    if params[:query].present?
      @users = User.where("location ILIKE ?", "%#{params[:query]}%")
      @users.sort_by(&:calculate_similarity_ranking)
    else
      # which params are there when user clicks adventurous option?
      @users = User.all
    end
  end

  # def random_local
  #   @random_local = User.order("RANDOM()").first
  # end

# method for calculating the number of similar interests between local and tourist
  def count_matching_interests
    @current_user_interests = current_user.user_interests
    # @locals = User.where.not(id: current_user.id)
    # @tourist_interests_count = @current_user_interests.count
    @locals.each do |local|
      @counter = 0
      @locals_interests = local.user_interests
      @current_user_interests.each do |interest_tourist|
        @locals_interests.each do |local_interest|
          @counter += 1 if interest_tourist == local_interest
        end
      end
    @counter
    end
  end

# method for calculating the similarity rating
  def calculate_similarity_ranking
    @matching_interests = count_matching_interests
    @locals.each do |local|
      @locals_interests_count = local.user_interests.count
      if @tourist_interests_count < @locals_interests_count
        @rating = @matching_interests / @tourist_interests_count
      elsif @tourist_interests_count >= @locals_interests_count
        @rating = @matching_interests / @locals_interests_count
      end
    end
    @rating
  end

  private

  def user_params
    params.require(:user).permit(:name, :address, :found_on, :species)
  end
end
