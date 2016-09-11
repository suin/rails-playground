class Photo < ActiveRecord::Base
  validates_presence_of :name
  attachment :file
  validates_presence_of :file
end
