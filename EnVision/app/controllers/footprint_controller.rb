class FootprintsController < ApplicationController
before_action :authenticate_user!

 def index
   @footprints = Footprint.all
   render :index
 end

 private
 def footprint_params
   params.require(:footprint).permit(:answer)
 end
end
