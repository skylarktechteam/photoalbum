class FeedController < ApplicationController

CONTENT_TYPE = 'application/rss+xml'

# all_photos () found in application.rb 

  def images
  	@photos =all_photos()
  	@headers['Content-Type'] = CONTENT_TYPE
  end

end
