class UsersController < ApplicationController
  before_action :set_current_user_count
  before_action :set_locals
  # before_action :tourist_interest_count

  def index
    @users = policy_scope(User)
    # @rating = calculate_similarity_ranking
    # authorize @users

    if params[:query].present?
      # @users = User.where("location ILIKE ?", "%#{params[:query]}%")
      # @users.sort_by(&:calculate_similarity_ranking)

    else
      raise
      # which params are there when user clicks adventurous option?
      # @users = User.where("location ILIKE ?", "%#{params[:query]}%")
      # @users = User.all
      # @users.sort_by(&:calculate_similarity_ranking)

      @locals.sort_by do |local|
        count_matching_interests(local)
        # calculate_similarity_ranking
      end
      # @users = User.all
    end
  end

  # def random_local
  #   @random_local = User.order("RANDOM()").first
  # end

# method for calculating the number of similar interests between local and tourist
  def count_matching_interests(local)
    # @locals = User.where.not(id: current_user.id)
    # @tourist_interests_count = @current_user_interests.count
    shared_interests = local.user_interests.select do |local_interest|
      current_user.user_interests.select do |tourist_interest|
        tourist_interest.interest.id == local_interest.interest.id
      end
    end
    shared_interests.length
    # counter = 0
    # locals_interests = local.user_interests
    # current_user.user_interests.each do |interest_tourist|
    #   locals_interests.each do |local_interest|
    #     counter += 1 if interest_tourist == local_interest
    #   end
    # end
    # counter
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

  # def tourist_interest_count
  #   @tourist_interests_count = @current_user_interests.count
  # end

  def set_locals
    @locals = User.where.not(id: current_user.id)
  end

  def set_current_user_count
    @tourist_interests_count = current_user.user_interests.count
  end

  def user_params
    params.require(:user).permit(:name, :address, :found_on, :species)
  end
end
