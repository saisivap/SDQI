class SharedsController < ApplicationController
  before_action :set_shared, only: [:show, :edit, :update, :destroy]
  before_action :admin_user,only:[:index, :new, :create]
  # GET /shareds
  # GET /shareds.json
  def index
    # @shareds = Shared.all.order("created_at DESC")
    if params[:term].blank?
      @shareds= Shared.all.order("created_at DESC")
      # redirect_to complaints_path
    else
      @shareds = Shared.search_by_full_details(params[:term])

    end
  end

  # GET /shareds/1
  # GET /shareds/1.json
  def show
  end

  # GET /shareds/new
  def new
    @shared = Shared.new
  end

  # GET /shareds/1/edit
  def edit
  end

  # POST /shareds
  # POST /shareds.json
  def create
    # params
    # debugger
    @shared = Shared.new(shared_params)
    @shared.block=params[:block]
    @shared.type_of_service=params[:type]
    @shared.user_id=current_user.id
    respond_to do |format|
      if @shared.save
        format.html { redirect_to shareds_path, notice: 'Shared was successfully created.' }
        format.json { render :show, status: :created, location: @shared }
      else
        format.html { render :new }
        format.json { render json: @shared.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shareds/1
  # PATCH/PUT /shareds/1.json
  def update
    respond_to do |format|
      if @shared.update(shared_params)
        format.html { redirect_to shareds_path, notice: 'Shared was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared }
      else
        format.html { render :edit }
        format.json { render json: @shared.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shareds/1
  # DELETE /shareds/1.json
  def destroy
    @shared.destroy
    respond_to do |format|
      format.html { redirect_to shareds_path, notice: 'Shared was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared
      @shared = Shared.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shared_params
      params.require(:shared).permit(:block, :floor, :type_of_service, :user_id)
    end
end
