class MoviesController < ApplicationController

   def index
      @movies = Movie.all
      render("/movies/index.html.erb")
   end

   def new_form
      render("/movies/new_form.html.erb")
   end


   def new_row
      #Parameters > :title = "text"
      # =>          :year = "####"
      # =>          :duration = "#"
      # =>          :description = "text"
      # =>          :image_url = "text"
         @movie = Movie.new

         @movie.title = params[:title]
         @movie.year = params[:year]
         @movie.duration = params[:duration]
         @movie.description = params[:description]
         @movie.image_url = params[:image_url]

         @movie.save

         render("details")
   end

   def details
      #Paremeters > :id = "#"
      @movie = Movie.find(params[:id])

      render("/movies/details.html.erb")
   end

   def edit_form
      #Parameters > :id = "#"
      @movie = Movie.find(params[:id])
      render("/movies/edit_form.html.erb")
   end

   def update_movie
      #Parameters > :id = "#"
      # =>          :title = "text"
      # =>          :year = "####"
      # =>          :duration = "#"
      # =>          :description = "text"
      # =>          :image_url = "text"

      @movie = Movie.find(params[:id])
      @movie.title = params[:title]
      @movie.year = params[:year]
      @movie.duration = params[:duration]
      @movie.description = params[:description]
      @movie.image_url = params[:image_url]

      @movie.save

      render("details")
   end

   def delete_row
      #Parameters > :id = "#"
      @movie = Movie.find(params[:id])

      @movie.destroy

      render("/movies/delete_row.html.erb")
   end

end
