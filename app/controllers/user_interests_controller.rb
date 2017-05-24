class UserInterestsController < ApplicationController
  def create
    #find current user
    @current_user = current_user
    #create user_interests
    interest_ids = params[:user_interest][:interest_id]
    interest_ids.each do |interest_id|
      @current_user.user_interests.create({interest_id: interest_id})
    end
    #redirect to users_path
    redirect_to users_path
  end
end


