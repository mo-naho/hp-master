class ImagesController < ApplicationController
  before_action :authenticate_account!

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create image_params
    if @image.save then
      redirect_to '/images'
    else
      render 'new'
    end
  end

  def edit
    @image = Image.find params[:id]
  end

  def destroy
    @image = Image.find params[:id]
    @image.destroy
    redirect_to'/images'
  end

  private
  def image_params
    params.require(:image).permit(:tag)
  end

end
