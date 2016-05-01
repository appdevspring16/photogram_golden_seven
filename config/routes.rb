Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

# put more specific route above so it won't conflict with the /photos/:id below

# Routes to CREATE photos

  get("/photos/new", { :controller => "photos", :action => "new_form"})
  get("/create_photo", { :controller => "photos", :action =>"create_row"})

  # Routes to READ photos
  get("/photos",          { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Delete Photo

  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  # Edit Photo

  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })

  # Update Row

  get("/update_photo/:id", { :controller => "photos", :action => "update_row" })


end
