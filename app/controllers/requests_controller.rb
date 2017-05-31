class RequestsController < ApplicationController

  # def new
  #   @request = Request.new
  # end

  def create
    sender = current_user
    @user = User.find(params[:user_id])
    @request = Request.new(sender: sender, receiver: @user)
    if @request.save
      # TODO: send sms to @user
      redirect_to requests_path
    else
      render "users/show"
    end
  end

  def index
    @user = current_user
    @interests = @user.interests
  end

  def show
    @request = Request.find(params[:id])
  end

  def to_s
    name
  end

  def update
    #find request
    @request = Request.find(params[:id])
    #update status

    @request.update(requests_params)

    if @request.accepted?
      # TODO: send sms to @request.sender
    end
    #redirect request index
    redirect_to requests_path
  end

  private

  def requests_params
    params.require(:request).permit(:sender_id, :receiver_id, :status)
  end
end
