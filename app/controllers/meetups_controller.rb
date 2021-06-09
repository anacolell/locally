class MeetupsController < ApplicationController
  before_action :set_conversation, only: [:new, :create]

  def new
    @meetup = Meetup.new
    authorize @meetup
  end

  def create
    @meetup = Meetup.new(meetup_strong_params)
    @meetup.conversation = @conversation
    if @meetup.save
      redirect_to conversation_path(@conversation)
    else
      @meetup = Meetup.new
      render :new
    end
  end

  def meetup_strong_params
    params.require(:meetup).permit(:location, :date_time)
  end

  def set_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end
end
