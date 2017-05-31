class RequestsController < ApplicationController

  # def new
  #   @request = Request.new
  # end

  def create
    sender = current_user
    @user = User.find(params[:user_id])
    @request = Request.new(sender: sender, receiver: @user)
    if @request.save
      @client = Twilio::REST::Client.new
      @client.messages.create(
        from: '+33644601654',
        to: @user.phone,
        body: '👫🌎✈TRAVEL CRUSH - You have been invited to discuss of your next travel with a new buddy!'
      )
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
    @conversation = Conversation.between(@request.sender, @request.receiver).first
    @messages = @conversation.messages
    @new_message = @conversation.messages.build
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
      @client = Twilio::REST::Client.new
      @client.messages.create(
        from: '+33644601654',
        to: @request.sender.phone,
        body: '👫🌎✈TRAVEL CRUSH - Check your dashboard, you have a new travel crush!'
      )
    end

    #redirect request index
    redirect_to requests_path
  end

  private

  def requests_params
    params.require(:request).permit(:sender_id, :receiver_id, :status)
  end
end
