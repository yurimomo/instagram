class PicturesController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_picture, only: [:destroy, :update, :destroy]
  def index
  	@pic = Picture.all
  end

  def new
  	@pic = Picture.new
  	
  end

  def create
  	 @pic = Picture.new(pictures_params)
  	if @pic.save
    redirect_to pictures_path, notice: "投稿しました"
    else
    render 'new'
   end
  end

  def destroy
  	@pic.destroy
  	redirect_to pictures_path, notice: "削除しました"
  end

  def edit
  end

  def update
  	@pic.update(pictures_params)
  	redirect_to pictures_path, notice: "編集しました"
  end


  private

   def pictures_params
   	params.require(:picture).permit(:content)
   	
   end

   def set_picture
    @pic = Picture.find(params[:id])
     
   end
end
