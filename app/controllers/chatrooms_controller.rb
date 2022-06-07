class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new(message_params)
  end
end
