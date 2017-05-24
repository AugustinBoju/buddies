class RequestsController < ApplicationController

  # def new
  #   @request = Request.new
  # end

  def create
    sender = current_user
    @user = User.find(params[:user_id])
    @request = Request.new(sender: sender, receiver: @user)
    if @request.save
      redirect_to requests_path
    else
      render "users/show"
    end
  end

  def index
  end

  def update
    #find request
    @request = Request.find(params[:id])
    #update status
    @request.update(requests_params)
    #redirect request index
    redirect_to requests_path
  end

  private

  def requests_params
    params.require(:request).permit(:sender_id, :receiver_id, :status)
  end
end
