class ConversationsController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end
end
