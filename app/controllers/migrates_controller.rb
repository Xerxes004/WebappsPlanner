class MigratesController < ApplicationController
  before_action :set_migrate, only: [:show, :edit, :update, :destroy]

  # GET /migrates
  # GET /migrates.json
  def index
    @migrates = Migrate.all
  end

  # GET /migrates/1
  # GET /migrates/1.json
  def show
  end

  # GET /migrates/new
  def new
    @migrate = Migrate.new
  end

  # GET /migrates/1/edit
  def edit
  end

  # POST /migrates
  # POST /migrates.json
  def create
    @migrate = Migrate.new(migrate_params)

    respond_to do |format|
      if @migrate.save
        format.html { redirect_to @migrate, notice: 'Migrate was successfully created.' }
        format.json { render :show, status: :created, location: @migrate }
      else
        format.html { render :new }
        format.json { render json: @migrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /migrates/1
  # PATCH/PUT /migrates/1.json
  def update
    respond_to do |format|
      if @migrate.update(migrate_params)
        format.html { redirect_to @migrate, notice: 'Migrate was successfully updated.' }
        format.json { render :show, status: :ok, location: @migrate }
      else
        format.html { render :edit }
        format.json { render json: @migrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /migrates/1
  # DELETE /migrates/1.json
  def destroy
    @migrate.destroy
    respond_to do |format|
      format.html { redirect_to migrates_url, notice: 'Migrate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_migrate
      @migrate = Migrate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def migrate_params
      params.require(:migrate).permit(:AddDescriptionToPlans, :description)
    end
end
