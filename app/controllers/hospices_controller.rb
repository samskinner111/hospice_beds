class HospicesController < ApplicationController
  before_action :set_hospice, only: [:show, :edit, :update, :destroy]

  def index
    @hospices = Hospice.all
  end

  def show
  end

  def new
    @hospice = Hospice.new
  end

  def edit
  end

  def create
    @hospice = Hospice.new(hospice_params)

    respond_to do |format|
      if @hospice.save
        format.html { redirect_to @hospice, notice: 'Hospice was successfully added.' }
        format.json { render :show, status: :created, location: @hospice }
      else
        format.html { render :new }
        format.json { render json: @hospice.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @hospice.update(hospice_params)
        format.html { redirect_to @hospice, notice: 'Hospice was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospice }
      else
        format.html { render :edit }
        format.json { render json: @hospice.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @hospice.destroy
    respond_to do |format|
      format.html { redirect_to hospices_url, notice: 'Hospice was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_hospice
      @hospice = Hospice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospice_params
      params.require(:hospice).permit(:name, :address1, :address2, :city, :state, :zipcode, :main_phone, :fax, :referral_phone, :description, :bed_owner)
    end
end
