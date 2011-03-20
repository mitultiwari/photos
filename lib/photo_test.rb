require 'rubygems'  
require 'active_record'  
ActiveRecord::Base.establish_connection(  
  :adapter => "sqlite3",  
  :host => "localhost",  
  :database => "db/development.sqlite3"
)  
   
class Photo < ActiveRecord::Base  
  def method_missing(method)
    #puts method.to_s if method.to_s =~ /fname/
    ph = Photo.find(:first) # returns the first object fetched by SELECT * FROM photos
    puts %{#{ph}}
    puts %{#{ph['filename']} description #{ph['description']}}  
  end
end  

Photo.new.fname

