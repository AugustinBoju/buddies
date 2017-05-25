class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :load_session, only: [:index]

  def index
    @users = User.filter(current_user, get_selected_interest_ids)
  end

  def show
    @user = User.find(params[:id])
    @receive_notication = Request.find_by(receiver_id: current_user.id, sender_id: @user.id)
    @send_request = Request.find_by(sender_id: current_user.id, receiver_id: @user.id)
    @request = Request.new
  end

  private

  def load_session
    session["init"] = true
  end

  def get_selected_interest_ids
    if current_user.present?
      current_user.interest_ids
    else
      session[:selected_interest_ids].map(&:to_i)
    end
  end
end
