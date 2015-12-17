class PuzzleskeletonsController < ApplicationController
  before_action :set_puzzleskeleton, only: [:show, :edit, :update, :destroy]

  # GET /puzzleskeletons
  # GET /puzzleskeletons.json
  def index
    @puzzleskeletons = Puzzleskeleton.all
  end

  # GET /puzzleskeletons/1
  # GET /puzzleskeletons/1.json
  def show
  end

  # GET /puzzleskeletons/new
  def new
    @puzzleskeleton = Puzzleskeleton.new
  end

  # GET /puzzleskeletons/1/edit
  def edit
  end

  # POST /puzzleskeletons
  # POST /puzzleskeletons.json
  def create
    @puzzleskeleton = Puzzleskeleton.new(puzzleskeleton_params)

    respond_to do |format|
      if @puzzleskeleton.save
        format.html { redirect_to @puzzleskeleton, notice: 'Puzzleskeleton was successfully created.' }
        format.json { render :show, status: :created, location: @puzzleskeleton }
      else
        format.html { render :new }
        format.json { render json: @puzzleskeleton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puzzleskeletons/1
  # PATCH/PUT /puzzleskeletons/1.json
  def update
    respond_to do |format|
      if @puzzleskeleton.update(puzzleskeleton_params)
        format.html { redirect_to @puzzleskeleton, notice: 'Puzzleskeleton was successfully updated.' }
        format.json { render :show, status: :ok, location: @puzzleskeleton }
      else
        format.html { render :edit }
        format.json { render json: @puzzleskeleton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puzzleskeletons/1
  # DELETE /puzzleskeletons/1.json
  def destroy
    @puzzleskeleton.destroy
    respond_to do |format|
      format.html { redirect_to puzzleskeletons_url, notice: 'Puzzleskeleton was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puzzleskeleton
      @puzzleskeleton = Puzzleskeleton.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puzzleskeleton_params
      params.require(:puzzleskeleton).permit(:name, :puzzleskeleton_id)
    end
end
