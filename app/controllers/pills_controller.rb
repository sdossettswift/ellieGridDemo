class PillsController < ApplicationController
  before_action :set_pill, only: [:show, :edit, :update, :destroy]

  # GET /pills
  # GET /pills.json
  def index
    @pills = Pill.all
    @first = Pill.by_slot("First").first
    @second = Pill.by_slot("Second").first
    @third = Pill.by_slot("Third").first
    @fourth = Pill.by_slot("Fourth").first
    @fifth =  Pill.by_slot("Fifth").first
    @sixth = Pill.by_slot("Sixth").first
    @seventh = Pill.by_slot("Seventh").first
  end

  # GET /pills/1
  # GET /pills/1.json
  def show
  end

  # GET /pills/new
  def new
    @pill = Pill.new

  end

  # GET /pills/1/edit
  def edit
  end

  # POST /pills
  # POST /pills.json
  def create
    @pill = Pill.new(pill_params)

    respond_to do |format|
      if @pill.save
        format.html { redirect_to @pill, notice: 'Pill was successfully added.' }
        format.json { render :show, status: :created, location: @pill }
      else
        format.html { render :new }
        format.json { render json: @pill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pills/1
  # PATCH/PUT /pills/1.json
  def update
    respond_to do |format|
      if @pill.update(pill_params)
        format.html { redirect_to @pill, notice: 'Pill was successfully updated.' }
        format.json { render :show, status: :ok, location: @pill }
      else
        format.html { render :edit }
        format.json { render json: @pill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pills/1
  # DELETE /pills/1.json
  def destroy
    @pill.destroy
    respond_to do |format|
      format.html { redirect_to pills_url, notice: 'Pill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove
    @pill.drug = ""
    @pill.dose = ""
    @pill.update_attributes(pill_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pill
      @pill = Pill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pill_params
      params.require(:pill).permit(:drug, :dose, :time, :slot, :box_id)
    end
end
