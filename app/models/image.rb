class Image < ActiveRecord::Base
 def img=(file)
   name = file.original_filename
   data = file.read
   directory = "app/assets/images"
   path = File.join(directory,name)
   self.title = name
   File.open(path,"wb") { |f| f.write(data) }
 end
end
