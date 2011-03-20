class Photo < ActiveRecord::Base
  has_many :slides
  has_and_belongs_to_many :categories
  
  validates_presence_of :filename 
  
  scope :with_filetype_jpg, :conditions => "filename like '%.jpg'" 
  scope :with_thumbnail, :conditions => "thumbnail not null and thumbnail != ''"
  scope :with_filetype, 
    lambda {|ftype| {:conditions => ["filename like ?", "%.#{ftype}"] } } 
end
