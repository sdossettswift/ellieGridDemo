class BoxesController < ApplicationController

  def show
   @box = Box.find(params[:id])
  end

  def new
   @box = Box.new
  end

  def create
   @boxes = Box.all
   @box = Box.create(box_params)
   
  end

  def edit
   @box = Box.find(params[:id])
  end

  def update
   @boxes = Box.all
   @box = Box.find(params[:id])

   @box.update_attributes(box_params)
  end

  def delete
   @box = Box.find(params[:box_id])
  end


  def destroy
   @boxes = Box.all
   @box = Box.find(params[:id])
   @box.destroy
  end

  private

  def box_params
   params.require(:box).permit(:user_id)
  end
end
