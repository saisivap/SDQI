class PravitesController < ApplicationController
  before_action :set_pravite, only: [:show, :edit, :update, :destroy]
  before_action :admin_user,only:[:index, :new, :create]
  # GET /pravites
  # GET /pravites.json
  def index
    # @pravites = Pravite.all.order("created_at DESC")
    if params[:term].blank?
      @pravites= Pravite.all.order("created_at DESC")
      # redirect_to complaints_path
    else
      @pravites = Pravite.search_by_full_details(params[:term])

    end
  end

  # GET /pravites/1
  # GET /pravites/1.json
  def show
  end

  # GET /pravites/new
  def new
    @pravite = Pravite.new
  end

  # GET /pravites/1/edit
  def edit
  end

  # POST /pravites
  # POST /pravites.json
  def create
    @pravite = Pravite.new(pravite_params)
    @pravite.block=params[:block]
    @pravite.type_of_service=params[:type]
    @pravite.user_id=current_user.id

    respond_to do |format|
      if @pravite.save
        format.html { redirect_to pravites_path, notice: 'Pravite was successfully created.' }
        format.json { render :show, status: :created, location: @pravite }
      else
        format.html { render :new }
        format.json { render json: @pravite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pravites/1
  # PATCH/PUT /pravites/1.json
  def update
    respond_to do |format|
      if @pravite.update(pravite_params)
        format.html { redirect_to pravites_path, notice: 'Pravite was successfully updated.' }
        format.json { render :show, status: :ok, location: @pravite }
      else
        format.html { render :edit }
        format.json { render json: @pravite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pravites/1
  # DELETE /pravites/1.json
  def destroy
    @pravite.destroy
    respond_to do |format|
      format.html { redirect_to pravites_url, notice: 'Pravite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def search
    # debugger
    # @results=Pravite.search(params[:search].downcase)
    if params[:search].blank?
      residents_path(pravites_path,alert:"Empty field") and return
    else
      # @results=Pravite.all.where("block LIKE ?", "%#{params[:search]}%")
      @results=Pravite.all.where(:flate => (params[:search]))
      # @results=Pravite.all.where(:flate => (params[:search]))
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pravite
      @pravite = Pravite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pravite_params
      params.require(:pravite).permit(:block, :flate, :type_of_service, :user_id)
    end
end
