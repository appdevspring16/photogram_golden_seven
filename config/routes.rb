Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })
  get("/photos/new", {:controller=>"photos", :action => "new_form"})
  get("/create_photo", {:controller=>"photos", :action => "create_row"})
get("/photos/:id/edit",{:controller=>"photos", :action => "edit_form"})
  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:identification_number",       { :controller => "photos", :action => "show" })
#Route to DELETE photos
get("/delete_photo/:identification_number", {:controller => "photos", :action =>"delete"})

get("/update_photo/:identification_number", {:controller=>"photos",:action=>"update_row"})


end
