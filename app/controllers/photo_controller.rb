class PhotosController < ApplicationController

def index
	@Photo = Photo.all	
end	

def new
		@movie = Movie.new
end

def create
		@photo = Photo.new(photo_params)
		if @photo.save
			redirect_to @photo, notice: 'Photo was created successfully.'
		else
			render action: 'new'
	end
end
