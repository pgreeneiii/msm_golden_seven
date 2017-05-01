Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/", {:controller => "movies", :action => "index"})

  #movie routes
  get("/movies", {:controller => "movies", :action => "index"})
  get("/movies/new", {:controller => "movies", :action => "new_form"})
  get("/create_movie", {:controller => "movies", :action => "new_row"})

  get("/movies/:id", {:controller => "movies", :action => "details"})

  get("/movies/edit/:id", {:controller => "movies", :action => "edit_form"})
  get("/update_movie/:id", {:controller => "movies", :action => "update_movie"})

  get("/delete_movie/:id", {:controller => "movies", :action => "delete_row"})

  #director routes
  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/new", {:controller => "directors", :action => "new_form"})
  get("/create_director", {:controller => "directors", :action => "new_row"})

  get("/directors/:id", {:controller => "directors", :action => "details"})

  get("directors/edit/:id", {:controller => "directors", :action => "edit_form"})
  get("/update_director/:id", {:controller => "directors", :action => "update_director"})

  get("/delete_director/:id", {:controller => "directors", :action => "delete_row"})

  #actor routes
  get("/actors", {:controller => "actors", :action => "index"})


end
