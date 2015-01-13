class RespondsController < ApplicationController
  def create
  	message = Message.find(params[:message_id])
  	message.responds.create(respond_params)

  	redirect_to message_path(message)
  end

  private

  def respond_params
  	  params.require(:message).permit(:title, :content)
  end
end
