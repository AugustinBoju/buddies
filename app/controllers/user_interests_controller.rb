class UserInterestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    if user_signed_in?
      current_user.create_user_interests(interest_ids)
    else
      session[:selected_interest_ids] = interest_ids
    end
    redirect_to users_path
  end

private

  def interest_ids
    params[:user_interest][:interest_id].reject(&:blank?)
  end
end


