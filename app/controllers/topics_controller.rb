class TopicsController < ApplicationController
  before_action :authenticate_account!

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create slideshow_params
    if @topic.save then
      redirect_to '/admin'
    else
      render 'new'
    end
  end
  
  def edit
    @topic = Topic.find params[:id]
  end

  def update
    @topic = Topic.find params[:id]
    @topic.update slideshow_params
    if @topic.save then
      redirect_to '/admin'
    else
      render'edit'
    end
  end
  
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to'/admin'
  end

  private
  def slideshow_params
    params.require(:topic).permit(:image_id, :jump_to, :memo)
  end
end