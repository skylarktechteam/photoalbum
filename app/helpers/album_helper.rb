module AlbumHelper

#this is a collection of methods = a 'module'

CONFIRM_MESSAGE = %q[Are you sure you want to see full list?]

NUMBER_OF_ROW_TYPES_FOR_DISPLAY = 3

LISTING_HEADER_COLUMNS =<<END_OF_HERE_DOC

<tr>
<th> Image </th>
<th> Description</th>
</tr>

END_OF_HERE_DOC

IMAGE_STYLE = {

	:base => 'margin-bottom: 0.5em; padding: 0.5em;',
	:thumb => 'height:48px; width:64px;'

}

=begin explain
Outputs a CSS classname used for prettyness
=end

def row_class_from_index(i)
	'row' + ((i % NUMBER_OF_ROW_TYPES_FOR_DISPLAY) + 1).to_s
	
end

def show_listing_header_columns
	LISTING_HEADER_COLUMS
	
end

def show_photo(photo)
	image_tag(
		photo.image_path
		#:alt => "Photo of insert alt title code}"

		)
end

def show_thumbnail_for_list(photo)

	photo.image_path
		#:alt => "Photo of insert path code"
	#	:style => IMAGE_STYLE[:thumb]

end

def page_title()
	@photo ? @photo.title : controller.action_name
end

def title_with_thumbnail(photo)
	[h(photo.title), show_thumbnail_for_list(photo)].join(
		ApplicationHelper::HTML_BREAK
		)
	
end


end
