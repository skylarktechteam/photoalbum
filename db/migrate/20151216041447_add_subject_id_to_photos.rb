class AddSubjectIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :subject_id, :integer
  end
end
