class AminitebookingsController < ApplicationController
  before_action :set_aminitebooking, only: [:show, :edit, :update, :destroy]

  # GET /aminitebookings
  # GET /aminitebookings.json
  def index
    @aminitebookings = Aminitebooking.all
  end

  # GET /aminitebookings/1
  # GET /aminitebookings/1.json
  def show
  end

  # GET /aminitebookings/new
  def new
    @aminitebooking = Aminitebooking.new
  end

  # GET /aminitebookings/1/edit
  def edit
  end

  # POST /aminitebookings
  # POST /aminitebookings.json
  def create
    @aminitebooking = Aminitebooking.new(aminitebooking_params)

    respond_to do |format|
      if @aminitebooking.save
        format.html { redirect_to @aminitebooking, notice: 'Aminitebooking was successfully created.' }
        format.json { render :show, status: :created, location: @aminitebooking }
      else
        format.html { render :new }
        format.json { render json: @aminitebooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aminitebookings/1
  # PATCH/PUT /aminitebookings/1.json
  def update
    respond_to do |format|
      if @aminitebooking.update(aminitebooking_params)
        format.html { redirect_to @aminitebooking, notice: 'Aminitebooking was successfully updated.' }
        format.json { render :show, status: :ok, location: @aminitebooking }
      else
        format.html { render :edit }
        format.json { render json: @aminitebooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aminitebookings/1
  # DELETE /aminitebookings/1.json
  def destroy
    @aminitebooking.destroy
    respond_to do |format|
      format.html { redirect_to aminitebookings_url, notice: 'Aminitebooking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aminitebooking
      @aminitebooking = Aminitebooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aminitebooking_params
      params.require(:aminitebooking).permit(:user_id, :roomsofaminite_id, :from_time_date, :to_time_date, :vacte)
    end
end
