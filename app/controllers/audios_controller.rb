class AudiosController < ApplicationController
  def index
    @audios = Audio.all
    render json: @audios
  end

  def show
    @audio = Audio.find(params[:id])
    render json: @audio
  end

  def new
    @audio = Audio.new
    render json: @audio
  end

  def edit
    @audio = Audio.find(params[:id])
  end

  def create
    @audio = Audio.new(params[:audio])

    if @audio.save
      render json: @audio, status: :created, location: @audio
    else
      render json: @audio.errors, status: :unprocessable_entity
    end
  end

  def update
    @audio = Audio.find(params[:id])

    if @audio.update_attributes(params[:audio])
      head :no_content
    else
      render json: @audio.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @audio = Audio.find(params[:id])
    @audio.destroy

    head :no_content
  end

end
