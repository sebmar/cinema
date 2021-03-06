class ShowingsController < ApplicationController
  before_action :set_showing, only: [:show, :edit, :update, :destroy]

  # GET /showings
  # GET /showings.json
  def index
    @showings = Showing.where('screening BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.next_month).all
  end

  # GET /showings/1
  # GET /showings/1.json
  def show
  end



  # GET /showings/new
  def new
    @movie = Movie.find(params[:movie_id])
    @showing = @movie.showings.build
  end

  # GET /showings/1/edit
  def edit
  end

  # POST /showings
  # POST /showings.json
  def create
    @movie = Movie.find(params[:movie_id])
    @showing = @movie.showings.build(params[:showing])

    respond_to do |format|
      if @showing.save
        format.html { redirect_to @showing, notice: 'Showing was successfully created.' }
        format.json { render :show, status: :created, location: @showing }
      else
        format.html { render :new }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showings/1
  # PATCH/PUT /showings/1.json
  def update
    respond_to do |format|
      if @showing.update(showing_params)
        format.html { redirect_to @showing, notice: 'Showing was successfully updated.' }
        format.json { render :show, status: :ok, location: @showing }
      else
        format.html { render :edit }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showings/1
  # DELETE /showings/1.json
  def destroy
    @showing.destroy
    respond_to do |format|
      format.html { redirect_to '/admin' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showing
      @showing = Showing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showing_params
      params.require(:showing, :movie).permit(:screening, :movie_id, :screen_id)
    end
end
