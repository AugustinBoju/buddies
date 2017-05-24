class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    byebug
    selected_interest_ids = params[:search].select { |k, v| v == "true" }.keys.map(&:to_i)
    @users = User.where.not(id: current_user.id)
    if selected_interest_ids.empty?
      @users = User.all
    else
      @users = User.all.selected_interest_ids
    end
  end


  def show
    @user = User.find(params[:id])
    @request = Request.new
  end
end
