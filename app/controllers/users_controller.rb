class UsersController < ApplicationController

  def show
    @user = current_user
    @organized_events = current_user.created_events.all
    @attended_events = current_user.attended_events.all
    @past_events = Event.all.where("created_at <= ?", Date.today)
    @future_events = Event.all.where("created_at >= ?", Date.today)
    
  end
  
end
