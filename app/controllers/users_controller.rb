class UsersController < ApplicationController

  def show
    @user = current_user
    @organized_events = current_user.created_events.all
  end
  
end
