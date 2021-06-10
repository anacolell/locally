import consumer from "./consumer";

const initConversationCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.conversationId;

    consumer.subscriptions.create({ channel: "ConversationChannel", id: id }, {
      received(data) {
        const current_user = messagesContainer.dataset.user
        const messageUser = data.user
        if(current_user == messageUser){
          messagesContainer.insertAdjacentHTML('beforeend', data.content);
          const element = document.getElementById("messages_box");
          // element.scrollTop = element.scrollHeight;
        } else {
          messagesContainer.insertAdjacentHTML('beforeend', data.guest);
          const element = document.getElementById("messages_box");
          // element.scrollTop = element.scrollHeight;
        }
      },
    });
  }
}

export { initConversationCable };
