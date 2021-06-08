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

  # def destroy
  #   @conversation = Conversation.find(params[:id])
  #   if @conversation.destroy
  #     redirect_to conversations_paths(@conversation)
  #   else
  #     render :new
  #   end
  # end

  private

  def conversation_params
    params.require(:conversation).permit(:local, :tourist)
  end
end
