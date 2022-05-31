class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end


  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.created_events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to :root, notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :location, :creator_id)
  end
end
