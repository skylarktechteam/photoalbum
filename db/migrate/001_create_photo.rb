class CreatePhoto < ActiveRecord::Migration

COLUMN_NAMES = [:description, :image_path, :title, :photographer]

SAMPLE_PHOTOS = [

	{
	
	 :title				=> 'T Creek',
	 :description		=> 'Waterway in T',
	 :image_path		=> '001_creek.jpg',
	 :photographer		=> 'Vince',

	},

{	 :title				=> 'Travis',
	 :description		=> %q[My friend Trav. wifes head partially in view so it wraps wround gatepost so it does],
	 :image_path		=> '002_travis.jpg',
	 :photographer		=> 'Vince',
	
	 },


{
	 :title				=> 'Liam Ducks',
	 :description		=> 'Nephew',
	 :image_path		=> '003_liam.jpg',
	 :photographer		=> 'Vince',
	},


]

def self.up

create_table :photos do |t|
	COLUMN_NAMES.each { |c| t.column c, :text }
end

#i hashed out this part - we need some sample data
#SAMPLE_PHOTOS.each do |sp|
#	p = Photo.create(sp)
#	p.save!
#end

end

def self.down
	drop_table :photos
	end
end