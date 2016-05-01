class DocumentStepsController < ApplicationController
  before_action :set_document_step, only: [:show, :edit, :update, :destroy]

  # GET /document_steps
  # GET /document_steps.json
  def index
    @document_steps = DocumentStep.all
    #@document_step_dependencies = DocumentStep.first.dependencies
    render json: @document_steps
  end

  # GET /document_steps/1
  # GET /document_steps/1.json
  def show
  end

  # GET /document_steps/new
  def new
    @document_step = DocumentStep.new
  end

  # GET /document_steps/1/edit
  def edit
  end

  # POST /document_steps
  # POST /document_steps.json
  def create
    @document_step = DocumentStep.new(document_step_params)

    respond_to do |format|
      if @document_step.save
        format.html { redirect_to @document_step, notice: 'Document step was successfully created.' }
        format.json { render :show, status: :created, location: @document_step }
      else
        format.html { render :new }
        format.json { render json: @document_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_steps/1
  # PATCH/PUT /document_steps/1.json
  def update
    respond_to do |format|
      if @document_step.update(document_step_params)
        format.html { redirect_to @document_step, notice: 'Document step was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_step }
      else
        format.html { render :edit }
        format.json { render json: @document_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_steps/1
  # DELETE /document_steps/1.json
  def destroy
    @document_step.destroy
    respond_to do |format|
      format.html { redirect_to document_steps_url, notice: 'Document step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_step
      @document_step = DocumentStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_step_params
      params.require(:document_step).permit(:references, :order, :video, :description)
    end
end
