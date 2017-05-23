class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    @sender = current_user
    @request = Request.new(requests_params)
    @receiver = User.find(params[:receiver_id])
    @request.receiver = @receiver
    @request.sender = current_user
    if @request.save
      redirect_to requests_path(@requests)
    else
      render "users/show"
    end
  end

  def index
    @requests = current_user.requests
  end

  private

  def requests_params
    params.require(:request).permit(:sender_id, :receiver_id)
  end
end
