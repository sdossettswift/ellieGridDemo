class Api::PillsController < ApplicationController

  before_action do
    request.format = :json
  end

protect_from_forgery with: :null_session


  def index
      @pills = Pill.all
  end

  def show
      @pill = Pill.find_by id: params[:id]
      render json: @pill, status:201
  end

  def create
    @pill = Pill.create(pill_params)
    if @pill.save
      render :show, status: 201
    else
      render json: @pill.errors, status:422
    end
  end

  def new
    @pill = Pill.new(pill_params)
  end

  def update
    @pill = Pill.find_by id: params[:id]
    if @petition.update(petition_params)
      render :show
    else
      render json: @pill.errors, status: 422
    end
  end

  def delete
    @pill = Pill.find_by id: params[:id]
    @pill.destroy
    head :ok
  end

  private

  def pill_params
    params.require(:pill).permit(:slot, :drug, :dose, :time)
  end

end
