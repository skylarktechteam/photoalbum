class AlbumController < ApplicationController
  
#defines a specific helper page 242 FooterHelper to be shared among controllers
#all_photos is found in app/controllers/application.rb

helper :footer

  def index
  	@photos = all_photos()

  end
#set up any instance variables here

  def show
  	@photos = Photo.find(params[:id])
  end
end
