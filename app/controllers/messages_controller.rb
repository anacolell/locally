class MessagesController < ApplicationController
  def create
    # @user = current_user
    # authorize @user

    @conversation = Conversation.find(params[:conversation_id])
    # @conversation.tourist = current_user
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    authorize @message
    if @message.save
      @notification = Notification.new
      @notification.conversation = @conversation
    if @message.user == @conversation.local
      @other_user = @conversation.tourist
    elsif @message.user == @conversation.tourist
      @other_user = @conversation.local
    end
      @notification.user = @other_user
      @notification.save
      ConversationChannel.broadcast_to(
        @conversation,
        guest: render_to_string(partial: "user_message", locals: { message: @message }),
        content: render_to_string(partial: "message", locals: { message: @message }),
        user: @message.user.id
      )
      redirect_to conversation_path(@conversation, anchor: "message-#{@message.id}")
    else
      render "conversations/show"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
