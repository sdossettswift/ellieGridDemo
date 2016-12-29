class PillsController < ApplicationController
  before_action :sign_in
  before_action do
     @current_user = User.find_by id: session[:user_id]
 end

  def index
   @pills = @current_user.pills.all.order(id: :asc)
   @first = @current_user.pills.by_slot("First").first
   @second = @current_user.pills.by_slot("Second").first
   @third = @current_user.pills.by_slot("Third").first
   @fourth = @current_user.pills.by_slot("Fourth").first
   @fifth =  @current_user.pills.by_slot("Fifth").first
   @sixth = @current_user.pills.by_slot("Sixth").first
   @seventh = @current_user.pills.by_slot("Seventh").first

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
   MedsScheduledMailer.scheduled_email(@current_user, @pill).deliver_later
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
