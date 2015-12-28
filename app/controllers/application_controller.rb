class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #pick a unique cookie name
  session :session_key => '_photo_album_session_id'

def all_photos()
	Photo.find(:all)
end

end
