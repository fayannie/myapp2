require 'rubygems'
require 'RMagick'

class ImageController < ApplicationController
 def index
  respond_to do |format|
      format.html # index.html.erb
  end  
 end

 def show
    @image = Image.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end
 
 def create
    @image = Image.new(params[:img])
    
    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, :notice => 'Image was successfully uploaded.' }
      end
    end
 end

 def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to image_url }
    end
 end
end

