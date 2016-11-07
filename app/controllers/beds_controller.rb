class BedsController < ApplicationController
  before_action :set_bed, only: [:show, :edit, :update, :destroy]

  def index
    @beds = Bed.all
  end

  def show
  end

  def new
    @bed = Bed.new
  end

  def edit
  end

  def create
    @bed = Bed.new(bed_params)
    @bed.hospice_id=current_user.hospice_id

    respond_to do |format|
      if @bed.save
        format.html { redirect_to @bed, notice: 'Bed was successfully added.' }
        format.json { render :show, status: :created, location: @bed }
      else
        format.html { render :new }
        format.json { render json: @bed.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bed.update(bed_params)
        format.html { redirect_to @bed, notice: 'Bed was successfully updated.' }
        format.json { render :show, status: :ok, location: @bed }
      else
        format.html { render :edit }
        format.json { render json: @bed.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bed.destroy
    respond_to do |format|
      format.html { redirect_to beds_url, notice: 'Bed was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_bed
      @bed = Bed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bed_params
      params.require(:bed).permit(:hospice_id, :status, :room_type, :bed_type, :gender, :desc)
    end
end
