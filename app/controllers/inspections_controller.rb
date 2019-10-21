class InspectionsController < ApplicationController
  before_action :set_client
  before_action :set_inspection, only: [:show, :edit, :update, :destroy]

  # GET clients/1/inspections
  def index
    @inspections = @client.inspections
  end

  # GET clients/1/inspections/1
  def show
  end

  # GET clients/1/inspections/new
  def new
    @inspection = @client.inspections.build
  end

  # GET clients/1/inspections/1/edit
  def edit
  end

  # POST clients/1/inspections
  def create
    @inspection = @client.inspections.build(inspection_params)

    if @inspection.save
      redirect_to([@inspection.client, @inspection], notice: 'Inspection was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT clients/1/inspections/1
  def update
    if @inspection.update_attributes(inspection_params)
      redirect_to([@inspection.client, @inspection], notice: 'Inspection was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE clients/1/inspections/1
  def destroy
    @inspection.destroy

    redirect_to client_inspections_url(@client)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_inspection
      @inspection = @client.inspections.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inspection_params
      params.require(:inspection).permit(:project_number, :project_name, :inspection_date, :inspection_address_street, :inspection_address_number, :inspection_address_zipcode, :inspection_address_city, :contact_person_name, :contact_person_phone, :contact_person_email, :report_compiler, :release_date, :approved, :building_image)
    end
end
