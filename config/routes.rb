Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  get("photos/new", { :controller => "photos", :action => "new_form"})
  get("photos/:id/edit", { :controller => "photos", :action => "edit_form"})

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  #Route to add photos
  get("/create_photo", { :controller => "photos", :action => "create_row"})

  #Route to delete photos
  get("/delete_photo/:id",       { :controller => "photos", :action => "delete_photo" })

  #Routes to edit photos
  get("/update_photo/:id", { :controller => "photos", :action => "update_row"})
end
