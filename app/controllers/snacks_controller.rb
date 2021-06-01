class SnacksController < ApplicationController
  before_action :set_snack, only: %i[ show edit update destroy ]

  # GET /snacks/new
  def new
    @snack = Snack.new
  end

  # GET /snacks/1/edit
  def edit
  end

  def show
  end

  # POST /snacks
  def create
    @snack = Snack.new(snack_params)

    respond_to do |format|
      if @snack.save
        format.html { redirect_to @snack, notice: "Snack was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snacks/1
  def update
    respond_to do |format|
      if @snack.update(snack_params)
        format.html { redirect_to @snack, notice: "Snack was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snacks/1
  def destroy
    @snack.destroy
    respond_to do |format|
      format.html { redirect_to snacks_url, notice: "Snack was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snack
      @snack = Snack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snack_params
      params.require(:snack).permit(:name, :price, :machine_id)
    end
end
