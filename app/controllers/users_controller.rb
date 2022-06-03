class UsersController < ApplicationController

  def show
    @user = current_user
    @organized_events = current_user.created_events.all
    @attended_events = current_user.attended_events.all.to_a
  end
  
end
