class VideosController < ApplicationController
  def index
    @videos = Video.all

    render json: @videos
  end

  def show
    @video = Video.find(params[:id])

    render json: @video
  end

  def new
    @video = Video.new

    render json: @video
  end

  def edit
    @video = Video.find(params[:id])
  end

  def create
    @video = Video.new(params[:video])

    if @video.save
      render json: @video, status: :created, location: @video
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  def update
    @video = Video.find(params[:id])

    if @video.update_attributes(params[:video])
      head :no_content
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    head :no_content
  end
end
