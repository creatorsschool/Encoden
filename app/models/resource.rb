class Resource < ActiveRecord::Base
  belongs_to :lesson
	mount_uploader :file, ::LessonResourcesUploader
end
