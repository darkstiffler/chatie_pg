class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  end

  def create
  	@message = Message.create message_params
  end

  def message_params
  	params.require(:message).permit(:body)
  end
end
