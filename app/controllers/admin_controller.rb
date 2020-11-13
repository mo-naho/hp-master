class AdminController < ApplicationController
  before_action :authenticate_account!

  def index
    @contacts = Contact.all
    @infos = Info.order(my_date: :desc)
    @topics = Topic.all
    @events = Event.all
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.create info_params
    if @info.save then
      redirect_to '/admin/'
    else
      render 'new'
    end
  end

  def edit
    @info = Info.find params[:id]
  end

  def update
    @info = Info.find params[:id]
    @info.update info_params
    if @info.save then
      redirect_to '/admin'
    else
      render 'edit'
    end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    redirect_to'/admin'
  end

  private
  def info_params
    params.require(:info).permit(:main, :my_date, :category_id)
  end
end
