class UsersController < ApplicationController
  before_action :current_user_count
  before_action :set_locals

  def index
    @users = policy_scope(User)
    unless @matching_number.nil?
    if params[:commit] == "Let's go!"
      # flash[:notice] = "Good news, there are locals in the city that you are visiting! The percentages show you how well your interests match with the locals' interests. Happy exploring!"
      @locals_location = @locals.where("location ILIKE ?", "%#{params[:query].split(",").first}%")
      @locals_location.each do |local|
        @matching_number = (calculate_similarity_ranking(local) * 100).round(0)
        local.instance_variable_set("@ranking", @matching_number)
      end
    else
      @random_locals_location = @locals.where("location ILIKE ?", "%#{params[:query].split(",").first}%")
      @random_local = @random_locals_location.sample
      @matching_number = (calculate_similarity_ranking(@random_local) * 100).round(0)
      @random_local.instance_variable_set("@ranking", @matching_number)
    end
  end
  end

# method for calculating the number of similar interests between local and tourist
  def count_matching_interests(local)
    counter = 0
    locals_interests = local.user_interests
    current_user.user_interests.each do |interest_tourist|
      locals_interests.each do |local_interest|
        counter += 1 if interest_tourist.interest_id == local_interest.interest_id
      end
    end
    counter
  end

# method for calculating the similarity rating
  def calculate_similarity_ranking(local)
    matching_interests = count_matching_interests(local).to_f
    locals_interests_count = local.user_interests.count.to_f
    matching = 0
    if @tourist_interests_count < locals_interests_count
      matching = matching_interests / @tourist_interests_count
    elsif @tourist_interests_count >= locals_interests_count && locals_interests_count > 0.0
      matching = matching_interests / locals_interests_count
    end
    matching
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @recommendations = Recommendation.where(user_id: @user.id)
    @recommendation_markers = @recommendations.geocoded.map do |recommendation|
      {
        lat: recommendation.latitude,
        long: recommendation.longitude,
        info_window: render_to_string(partial: "info_window", locals: { recommendation: recommendation })
      }
    end
  end

  private

  def set_locals
    @locals = User.where.not(id: current_user.id)
  end

  def current_user_count
    @tourist_interests_count = current_user.user_interests.count.to_f
  end

  def user_params
    params.require(:user).permit(:username, :photo, :location, :age)
  end
end
