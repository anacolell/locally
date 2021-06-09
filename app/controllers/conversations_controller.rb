class ConversationsController < ApplicationController
  def index
    @user = current_user
    authorize @user
    @conversations = policy_scope(Conversation).where(tourist_id: current_user.id).or(policy_scope(Conversation).where(local_id: current_user.id))
    @conversations = @conversations.order(created_at: :desc)
  end

  def show
    @user = current_user
    authorize @user
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    @notifications = current_user.notifications.where(conversation: @conversation).where(seen: false)
    if @notifications.any?
      @notifications.each do |notif|
        notif.seen = true
        notif.save
      end
    end
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

  def destroy
    authorize current_user
    @conversation = Conversation.find(params[:id])
    if @conversation.destroy
      redirect_to conversations_path
    else
      render :new
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:local, :tourist)
  end
end
