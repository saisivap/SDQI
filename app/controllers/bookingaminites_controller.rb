class BookingaminitesController < ApplicationController
  before_action :set_bookingaminite, only: [:show, :edit, :update, :destroy]
  before_action :admin_user,only:[:destroy]
  # GET /bookingaminites
  # GET /bookingaminites.json
  def index

    if params[:term].blank?
      @bookingaminites = Bookingaminite.all
      # redirect_to complaints_path
    else
      @bookingaminites = Bookingaminite.search_by_full_details(params[:term])

    end
  end

  # GET /bookingaminites/1
  # GET /bookingaminites/1.json
  def show
  end

  # GET /bookingaminites/new
  def new
    @bookingaminite = Bookingaminite.new
  end

  # GET /bookingaminites/1/edit
  def edit
  end
  def residentbooking
    @bookings=Bookingaminite.where("user_id":current_user.id).all.order("created_at DESC")
  end
  # POST /bookingaminites
  # POST /bookingaminites.json
  def create
    @bookingaminite = Bookingaminite.new(bookingaminite_params)
    @bookingaminite.timing=params[:timing]
    @bookingaminite.aminite_id=Roomsofaminite.find(@bookingaminite.roomsofaminite_id).aminite_id
    # debugger
    cou=Bookingaminite.where("roomsofaminite_id":@bookingaminite.roomsofaminite_id,"booking_date":@bookingaminite.booking_date,"timing":@bookingaminite.timing).count
    # debugger
    respond_to do |format|
      if cou==0

          if @bookingaminite.save
            format.html { redirect_to @bookingaminite, notice: 'Booking was successfully Done.' }
            format.json { render :show, status: :created, location: @bookingaminite }
          else
            format.html { render :new }
            format.json { render json: @bookingaminite.errors, status: :unprocessable_entity }
          end

      else
        format.html {redirect_to  new_bookingaminite_url ,:alert => "The slot is already Occupied "}
      end
    end
  end

  # PATCH/PUT /bookingaminites/1
  # PATCH/PUT /bookingaminites/1.json
  def update
    respond_to do |format|
      if @bookingaminite.update(bookingaminite_params)
        format.html { redirect_to @bookingaminite, notice: 'Bookingaminite was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookingaminite }
      else
        format.html { render :edit }
        format.json { render json: @bookingaminite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookingaminites/1
  # DELETE /bookingaminites/1.json
  def destroy
    @bookingaminite.destroy
    respond_to do |format|
      format.html { redirect_to bookingaminites_url, notice: 'Bookingaminite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookingaminite
      @bookingaminite = Bookingaminite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookingaminite_params
      params.require(:bookingaminite).permit(:user_id, :roomsofaminite_id, :booking_date, :timing)
    end
end
