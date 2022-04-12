class FearsController < ApplicationController
  before_action :find_fear, only: [:show, :destroy]

  def index
    render json: Fear.all
  end

  def show
    render json: @fear
  end

  def create
    fear = Fear.create(fear_params)
    if fear.valid?
      render json: fear, status: 201
    else
      render json: { error: fear.errors.full_messages }, status: 400
    end
  end

  def destroy
    @person.destroy
  end

  private

  def find_fear
    @fear = Fear.find(params[:id])
  end

  def fear_params
    params.permit(:name, :person_id)
  end

end
