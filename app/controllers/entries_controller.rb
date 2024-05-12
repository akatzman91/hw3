class EntriesController < ApplicationController

 def index
   @entries = Entry.all
 end
  
 def show
   @entries = Entry.find.by({"id" => params["id"]})
 end
  
 def new
  
 end
  
 def create
   @entry = Entry.new
   @entry["title"] = params["title"]
   @entry["description"] = params["description"]
   @entry["posted_on"] = params["posted_on"]
   @entry.save
   redirect_to "/entries"
end

end
