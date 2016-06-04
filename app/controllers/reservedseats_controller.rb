class ReservedseatsController < ApplicationController
  before_action :set_reservedseat, only: [:show, :edit, :update, :destroy] 

  # GET /reservedseats
  # GET /reservedseats.json
  def index
    @reservedseats = Reservedseat.all
  end

  # GET /reservedseats/1
  # GET /reservedseats/1.json
  def show
  end

  # GET /reservedseats/new
  def new

    @booking = Booking.find(params[:booking_id])
    @reservedseat = @booking.reservedseats.build
  end

  # GET /reservedseats/1/edit
  def edit
  end

  # POST /reservedseats
  # POST /reservedseats.json
  def create
  @seat = Seat.find(params[:seats_seat_ids])
  @booking = Booking.find(params[:booking_id])
  @showing_id = @booking.showing_id
  @reservedseat = @booking.reservedseats.build(params[:reservedseat])

    respond_to do |format|
      if @reservedseat.save
        format.html { redirect_to @reservedseat, notice: 'Reservedseat was successfully created.' }
        format.json { render :show, status: :created, location: @reservedseat }
      else
        format.html { render :new }
        format.json { render json: @reservedseat.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /reservedseats/1
  # PATCH/PUT /reservedseats/1.json
  def update
    respond_to do |format|
      if @reservedseat.update(reservedseat_params)
        format.html { redirect_to @reservedseat, notice: 'Reservedseat was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservedseat }
      else
        format.html { render :edit }
        format.json { render json: @reservedseat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservedseats/1
  # DELETE /reservedseats/1.json
  def destroy
    @reservedseat.destroy
    respond_to do |format|
      format.html { redirect_to reservedseats_url, notice: 'Reservedseat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservedseat
      @reservedseat = Reservedseat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservedseat_params
      params.require(:reservedseat, :booking, :showing, :seat).permit(:seat_ids, :booking_id, :showing_id)
    end
end
