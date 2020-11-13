class EventsController < ApplicationController
  before_action :authenticate_account!
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.create event_params
    if @event.save then
      redirect_to '/admin'
    else
      render 'new'
    end
  end
  
  def edit
    @event = Event.find params[:id]
  end

  def update
    @event = Event.find params[:id]
    @event.update event_params
    if @event.save then
      redirect_to '/admin'
    else
      render'edit'
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to'/admin'
  end

  private
  def event_params
    params.require(:event).permit(:event_name, :event_date, :jump_to)
  end
end
