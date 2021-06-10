class MeetupsController < ApplicationController
  before_action :set_conversation, only: [:new, :create]

  def index
    @user = current_user
    authorize @user
    @meetups = policy_scope(Meetup).where(tourist_id: current_user.id).or(policy_scope(Meetup).where(local_id: current_user.id))
    @meetups = @meetups.order(created_at: :desc)
  end

  def show
    @user = current_user
    authorize @user
    @meetup = Meetup.find(params[:id])
  end

  def new
    @meetup = Meetup.new
    authorize @meetup
  end

  def create
    @meetup = Meetup.new(meetup_strong_params)
    authorize @meetup
    @local = @conversation.local
    @tourist = @conversation.tourist
    @meetup.local = @local
    @meetup.tourist = @tourist
    if @meetup.save
      flash[:alert] = "A meetup was created! You can find the details on your profile"
      redirect_to conversation_path(@conversation)
    else
      @meetup = Meetup.new
      render :new
    end
  end

  def destroy
    authorize current_user
    @meetup = Meetup.find(params[:id])
    if @meetup.destroy
      redirect_to profile_path(current_user)
    else
      render :new
    end
  end

  def meetup_strong_params
    params.require(:meetup).permit(:location, :date_time, :time)
  end

  def set_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end
end
