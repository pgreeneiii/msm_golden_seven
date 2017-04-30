class ActorsController < ApplicationController

   def index
      @actors = Actor.all
      render("/actors/index.html.erb")
   end

end
