class PicturesController < ApplicationController
  def index
  	@pic = Picture.all
  end

  def new
  	@pic = Picture.new
  	
  end

  def create
  	Picture.create(pictures_params)
  	redirect_to pictures_path
  end

  def destroy
  	
  end


  private

   def pictures_params
   	params.require(:picture).permit(:content)
   	
   end
end
