class UserInterestsController < ApplicationController
  def create
    interest_ids = params[:user_interest][:interest_id].reject(&:blank?)
    if current_user.present?
      #find current user
      @current_user = current_user
      #create user_interests
      interest_ids.each do |interest_id|
        @current_user.user_interests.create({interest_id: interest_id})
      end
    else
      session[:selected_interest_ids] = interest_ids
    end
    redirect_to users_path
  end
end


