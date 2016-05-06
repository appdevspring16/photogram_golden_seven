Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Deleting Photo
  get("/delete_photo/:id", { :controller => "photos", :action => "delete_photo" })

  # Editing Photo
  get("/edit/:id", { :controller => "photos", :action => "edit_photo" })
  get("/editph/:id", { :controller => "photos", :action => "update_row" })

  # Routes to create photos
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/create_photo", { :controller => "photos", :action => "create_row" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

end
