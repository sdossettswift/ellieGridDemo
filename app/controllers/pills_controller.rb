class PillsController < ApplicationController
  before_action :sign_in

  def index
   @pills = Pill.all.order(id: :asc)
   @first = Pill.by_slot("First").first
   @second = Pill.by_slot("Second").first
   @third = Pill.by_slot("Third").first
   @fourth = Pill.by_slot("Fourth").first
   @fifth =  Pill.by_slot("Fifth").first
   @sixth = Pill.by_slot("Sixth").first
   @seventh = Pill.by_slot("Seventh").first

  end


  def show
   @pill = Pill.find(params[:id])
  end


  def new
   @pill = Pill.new
  end

  def create
   @pills = Pill.all
   @pill = Pill.create(pill_params)
  end

  def edit
   @pill = Pill.find(params[:id])
  end

  def update
   @pills = Pill.all.order(id: :asc)
   @pill = Pill.find(params[:id])

   @pill.update_attributes(pill_params)
  end

  def delete
   @pill = Pill.find(params[:pill_id])
  end


  def destroy
   @pills = Pill.all
   @pill = Pill.find(params[:id])
   @pill.destroy
  end


  def remove

    @pill.drug = ""
    @pill.dose = ""
    @pill.update_attributes(pill_params)


  end
  private
  def sign_in
   if @current_user.nil?
     redirect_to sign_in_path, alert: "Please Sign In"
   end
  end


  def pill_params
   params.require(:pill).permit(:drug, :dose, :time, :slot, :box_id)
  end
end
