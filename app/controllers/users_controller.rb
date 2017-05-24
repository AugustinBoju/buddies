class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    selected_interest_ids = params[:search].select { |k, v| v == "true" }.keys.map(&:to_i)
    if selected_interest_ids.empty?
      @users = User.where.not(id: current_user.id)
    else
      @users = User.all.selected_interest_ids
    end
  end


  def show
    @user = User.find(params[:id])
    @request = Request.new
  end
end
