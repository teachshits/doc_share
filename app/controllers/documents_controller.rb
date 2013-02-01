class DocumentsController < ApplicationController
  def index
    @documents = Document.all
    render json: @documents
  end

  def show
    @document = Document.find(params[:id])

    render json: @document
  end

  def new
    @document = Document.new

    render json: @document
  end

  def edit
    @document = Document.find(params[:id])
  end

  def create
    @document = Document.new(params[:document])

    if @document.save
      render json: @document, status: :created, location: @document
    else
      render json: @document.errors, status: :unprocessable_entity
    end
  end

  def update
    @document = Document.find(params[:id])

    if @document.update_attributes(params[:document])
      head :no_content
    else
      render json: @document.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    head :no_content
  end
end
