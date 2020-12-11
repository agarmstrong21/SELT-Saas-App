class PilesController < ApplicationController
  before_action :set_pile, only: [:show, :edit, :update, :destroy]

  # GET /piles
  # GET /piles.json
  def index
    @piles = Pile.all
  end

  # GET /piles/1
  # GET /piles/1.json
  def show
  end

  # GET /piles/new
  def new
    @pile = Pile.new
  end

  # GET /piles/1/edit
  def edit
  end

  # POST /piles
  # POST /piles.json
  def create
    Pile.create_pile! pile_params
  end

  # PATCH/PUT /piles/1
  # PATCH/PUT /piles/1.json
  def update
    respond_to do |format|
      if @pile.update(pile_params)
        format.html { redirect_to @pile, notice: 'Pile was successfully updated.' }
        format.json { render :show, status: :ok, location: @pile }
      else
        format.html { render :edit }
        format.json { render json: @pile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piles/1
  # DELETE /piles/1.json
  def destroy
    @pile.destroy
    respond_to do |format|
      format.html { redirect_to piles_url, notice: 'Pile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def change_visibility
    pile_hash = params[:pile]
    pile = Pile.find_by(Name: pile_hash[:visible])
    pile.update_attribute(:visible, !pile[:visible])
    redirect_to home_home_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_pile
    @pile = Pile.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def pile_params
    params.require(:pile).permit(:name, :pile_type)
  end
end
