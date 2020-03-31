class ComplaintsController < ApplicationController
  before_action :set_complaint, only: [:show, :destroy]
  before_action :authenticate_user!
  # before_action :admin_user,only: [:index]

  # GET /complaints
  # GET /complaints.json
  # def index
  #   @complaints = Complaint.all
  # end
  def index
    if params[:term].blank?
      @complaints= Complaint.all
      # redirect_to complaints_path
    else
      @complaints = Complaint.search_by_full_details(params[:term])

    end
  end
  def sharedcomplaints
    @complaints=Complaint.where("type_of_property":"Shared", "block":"A").all.order("created_at DESC")
  end
  # GET /complaints/1
  # GET /complaints/1.json
  def show
  end

  # GET /complaints/new
  def new
    # debugger
    @complaint = Complaint.new

  end
  def notification
    @notifications=Complaint.where("user_id":current_user.id,"solved":false)
  end
  def solved
      @solved=Complaint.where("user_id":current_user.id,"solved":true).all.order("solved_time DESC")
  end

  # GET /complaints/1/edit
  def edit
  end

  # POST /complaints
  # POST /complaints.json
  def create
    @complaint = Complaint.new(complaint_params)
    # debugger
    @complaint.user_id = current_user.id
    @complaint.type_of_property = params["type"]
    @complaint.block=current_user.block
    if params["floor"]==nil
      @complaint.floor=current_user.flate
    else
      @complaint.floor = params["floor"]
    end
    # debugger
    respond_to do |format|
      if @complaint.save
        format.html { redirect_to root_path, notice: 'Complaint was successfully created.' }
        format.json { render :show, status: :created, location: @complaint }
      else
        format.html { render :new }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complaints/1
  # PATCH/PUT /complaints/1.json
  def update
    respond_to do |format|
      if @complaint.update(complaint_params)
        format.html { redirect_to @complaint, notice: 'Complaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @complaint }
      else
        format.html { render :edit }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaints/1
  # DELETE /complaints/1.json
  def destroy
    @complaint.destroy_all
    respond_to do |format|
      format.html { redirect_to complaints_url, notice: 'Complaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complaint_params
      params.require(:complaint).permit(:description, :type, :block, :floor, :user_id,:image)
    end
end
