# app/controllers/image_controller.rb
class ImageController < ApplicationController
  
  def index
    @images = Image.all
  end
   
  def show
    @image = Image.find(params[:id])
  end
  
  def new
    @image = Image.new
  end
  
  def edit
    @image = Image.find(params[:id])
    @pid = @image.id
    @title = @image.title[0]
    @subject = @image.subject[0]
  end

  def create
    @image = Image.new(params[:image])
    uploaded_io = params[:image][:file]
    @image.datastreams["imageContent"].content = File.new(uploaded_io.read);
    @image.save
    render :show
  end
  
  def update
    @image = Image.find(params[:pid])
    @image.title = params[:title]
    @image.subject = params[:subject]
    @image.save
    #@image.update_attributes(params[:image])
    render :show
  end


  def edit2
    @image = Image.find(params[:id])
    
    def printTitle
      Image.find(params[:id])[:title]
    end
  end
  
  
end
