class PlansController < ApplicationController
  before_action :authenticate_user!
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  # GET /plans
  # GET /plans.json
  def index
    if user_signed_in?
      @plans = Plan.where(user_id: current_user.id)
    else
      @plans = []
    end
  end

  # GET /plans/1
  # GET /plans/1.json
  def show
    @terms = Term.where(plan_id: @plan.id)
  end

  # GET /plans/new
  def new
    @plan = Plan.new
  end

  # GET /plans/1/edit
  def edit
  end

  # POST /plans
  # POST /plans.json
  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    
    respond_to do |format|
      if @plan.save
        
        fall = Term.new
        spring = Term.new
        summer = Term.new
        fall.term_name = 'Fall 2016'
        spring.term_name = 'Spring 2017'
        summer.term_name = 'Summer 2017'
        fall.plan_id = @plan.id
        spring.plan_id = @plan.id
        summer.plan_id = @plan.id
        fall.save!
        spring.save!
        summer.save!

        format.html { redirect_to @plan, notice: 'Plan was successfully created.' }
        format.json { render :show, status: :created, location: @plan }
      else
        format.html { render :new }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plans/1
  # PATCH/PUT /plans/1.json
  def update
    respond_to do |format|
      if @plan.update(plan_params)
        format.html { redirect_to @plan, notice: 'Plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan }
      else
        format.html { render :edit }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plans/1
  # DELETE /plans/1.json
  def destroy
    @plan.destroy
    respond_to do |format|
      format.html { redirect_to plans_url, notice: 'Plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      puts '==================================='
      puts params    
      puts '==================================='
      @plan = Plan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_params
      params.require(:plan).permit(:name, :user_id, :description, :id)
    end
end
