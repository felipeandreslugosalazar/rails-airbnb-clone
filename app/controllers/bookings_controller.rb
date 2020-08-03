class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    # I guess this will be useful for the dashboard where all your bookings are listed
    # we still have to watchout, I think rn this would be every single booking ever by anybody, not just by a specific user 
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new  
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def edit 
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params[booking_params])

    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
