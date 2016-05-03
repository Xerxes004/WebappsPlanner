class TermsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_term, only: [:show, :edit, :update, :destroy]

  # GET /terms
  # GET /terms.json
  def index
    @terms = Term.where(plan_id: :plan_id)
  end

  # GET /terms/1
  # GET /terms/1.json
  def show
  end

  # GET /terms/new
  def new
    @term = Term.new
    @term.plan_id = params[:plan_id]
  end

  # GET /terms/1/edit
  def edit
    #@term[:courses] = Course.all
  end

  # POST /terms
  # POST /terms.json
  def create
    @term = Term.new(term_params)
    @term.plan_id = params[:plan_id]

    respond_to do |format|
      if @term.save
        format.html { redirect_to @term, notice: 'Term was successfully created.' }
        format.json { render :show, status: :created, location: @term }
      else
        format.html { render :new }
        format.json { render json: @term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terms/1
  # PATCH/PUT /terms/1.json
  def update
    respond_to do |format|
      if @term.update(term_params)
        format.html { redirect_to @term, notice: 'Term was successfully updated.' }
        format.json { render :show, status: :ok, location: @term }
      else
        format.html { render :edit }
        format.json { render json: @term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terms/1
  # DELETE /terms/1.json
  def destroy
    plan_id = @term.plan_id
    @term.destroy
    respond_to do |format|
      format.html { redirect_to plan_url(plan_id), notice: 'Term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term
    puts '==================================='
    puts params    
    puts '==================================='
      @term = Term.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_params
      params.require(:term).permit(:term_name, :plan_id)
    end
end
