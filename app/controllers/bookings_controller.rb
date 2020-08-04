class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
