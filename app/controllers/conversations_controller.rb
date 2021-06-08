class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
  end

  def show
    @user = current_user
    authorize @user
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def new
    @conversation = Conversation.new
    @users = User.all
  end

  def create
    @user = current_user
    authorize @user
    @local = User.find(params[:user_id])
    @conversation = Conversation.new(tourist: current_user, local: @local)
      if @conversation.save
        redirect_to conversation_path(@conversation)
      else
        render :new
      end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:local, :tourist)
  end
end
