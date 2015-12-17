class PuzzlepiecesController < ApplicationController
  before_action :set_puzzleskeleton, only: [:create, :new, :index]
  before_action :set_puzzlepiece, only: [:show, :edit, :update, :destroy]

  # GET /puzzlepieces
  # GET /puzzlepieces.json
  def index
    @puzzlepieces = @puzzleskeleton.puzzlepieces
  end

  # GET /puzzlepieces/1
  # GET /puzzlepieces/1.json
  def show
  end

  # GET /puzzlepieces/new
  def new
    @puzzlepiece = @puzzleskeleton.puzzlepieces.build
  end

  # GET /puzzlepieces/1/edit
  def edit
  end

  # POST /puzzlepieces
  # POST /puzzlepieces.json
  def create
    @puzzlepiece = @puzzleskeleton.puzzlepieces.build(puzzlepiece_params)

    respond_to do |format|
      if @puzzlepiece.save
        format.html { redirect_to @puzzleskeleton, notice: 'puzzlepiece was successfully created.' }
        format.json { render :show, status: :created, location: @puzzlepiece }
        format.js {redirect_via_turbolinks_to [@puzzlepiece.puzzleskeleton, @puzzlepiece]}
      else
        format.html { render :new }
        format.json { render json: @puzzlepiece.errors, status: :unprocessable_entity }
        format.js { render partial: 'shared/ajax_form_errors', locals: {model: @puzzlepiece}, status: 400}
      end
    end
  end

  # PATCH/PUT /puzzlepieces/1
  # PATCH/PUT /puzzlepieces/1.json
  def update
    respond_to do |format|
      if @puzzlepiece.update(puzzlepiece_params)
        format.html { redirect_to [@puzzleskeleton, @puzzlepiece], notice: 'puzzlepiece was successfully updated.' }
        format.json { render :show, status: :ok, location: @puzzlepiece }
        format.js {redirect_via_turbolinks_to [@puzzlepiece.puzzleskeleton, @puzzlepiece]}
      else
        format.html { render :edit }
        format.json { render json: @puzzlepiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puzzlepieces/1
  # DELETE /puzzlepieces/1.json
  def destroy
    @puzzlepiece.destroy
    respond_to do |format|
      format.html { redirect_to puzzleskeleton_puzzlepieces_path(@puzzleskeleton), notice: 'puzzlepiece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_puzzleskeleton
      @puzzleskeleton = Puzzleskeleton.friendly.find(params[:puzzleskeleton_id])
    end

    def set_puzzlepiece
      @puzzlepiece = Puzzlepiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puzzlepiece_params
      params.require(:puzzlepiece).permit(:number, :puzzlepiece_id)
    end
end
