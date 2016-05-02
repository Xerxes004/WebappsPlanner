class AddDescriptionToPlansController < ApplicationController
  before_action :set_add_description_to_plan, only: [:show, :edit, :update, :destroy]

  # GET /add_description_to_plans
  # GET /add_description_to_plans.json
  def index
    @add_description_to_plans = AddDescriptionToPlan.all
  end

  # GET /add_description_to_plans/1
  # GET /add_description_to_plans/1.json
  def show
  end

  # GET /add_description_to_plans/new
  def new
    @add_description_to_plan = AddDescriptionToPlan.new
  end

  # GET /add_description_to_plans/1/edit
  def edit
  end

  # POST /add_description_to_plans
  # POST /add_description_to_plans.json
  def create
    @add_description_to_plan = AddDescriptionToPlan.new(add_description_to_plan_params)

    respond_to do |format|
      if @add_description_to_plan.save
        format.html { redirect_to @add_description_to_plan, notice: 'Add description to plan was successfully created.' }
        format.json { render :show, status: :created, location: @add_description_to_plan }
      else
        format.html { render :new }
        format.json { render json: @add_description_to_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_description_to_plans/1
  # PATCH/PUT /add_description_to_plans/1.json
  def update
    respond_to do |format|
      if @add_description_to_plan.update(add_description_to_plan_params)
        format.html { redirect_to @add_description_to_plan, notice: 'Add description to plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_description_to_plan }
      else
        format.html { render :edit }
        format.json { render json: @add_description_to_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_description_to_plans/1
  # DELETE /add_description_to_plans/1.json
  def destroy
    @add_description_to_plan.destroy
    respond_to do |format|
      format.html { redirect_to add_description_to_plans_url, notice: 'Add description to plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_description_to_plan
      @add_description_to_plan = AddDescriptionToPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_description_to_plan_params
      params.require(:add_description_to_plan).permit(:description)
    end
end
