class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    selected_interest_ids = params[:search].select { |k, v| v == "true" }.keys.map(&:to_i)
    @users = User.filter(current_user, selected_interest_ids)
  end

  def show
    @user = User.find(params[:id])
    @request = Request.new
  end
end
