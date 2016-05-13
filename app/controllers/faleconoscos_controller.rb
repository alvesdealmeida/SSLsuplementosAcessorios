class FaleconoscosController < ApplicationController
  before_action :set_faleconosco, only: [:show, :edit, :update, :destroy]

  # GET /faleconoscos
  # GET /faleconoscos.json
  def index
    @faleconoscos = Faleconosco.all
  end

  # GET /faleconoscos/1
  # GET /faleconoscos/1.json
  def show
  end

  # GET /faleconoscos/new
  def new
    @faleconosco = Faleconosco.new
  end

  # GET /faleconoscos/1/edit
  def edit
  end

  # POST /faleconoscos
  # POST /faleconoscos.json
  def create
    @faleconosco = Faleconosco.new(faleconosco_params)

    respond_to do |format|
      if @faleconosco.save
        format.html { redirect_to @faleconosco, notice: 'Faleconosco was successfully created.' }
        format.json { render :show, status: :created, location: @faleconosco }
      else
        format.html { render :new }
        format.json { render json: @faleconosco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faleconoscos/1
  # PATCH/PUT /faleconoscos/1.json
  def update
    respond_to do |format|
      if @faleconosco.update(faleconosco_params)
        format.html { redirect_to @faleconosco, notice: 'Faleconosco was successfully updated.' }
        format.json { render :show, status: :ok, location: @faleconosco }
      else
        format.html { render :edit }
        format.json { render json: @faleconosco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faleconoscos/1
  # DELETE /faleconoscos/1.json
  def destroy
    @faleconosco.destroy
    respond_to do |format|
      format.html { redirect_to faleconoscos_url, notice: 'Faleconosco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faleconosco
      @faleconosco = Faleconosco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faleconosco_params
      params.require(:faleconosco).permit(:Cliente_id, :email, :assunto, :conteudo)
    end
end
