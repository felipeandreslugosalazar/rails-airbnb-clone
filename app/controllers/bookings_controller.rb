class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.save
  end

  def my_bookings
    # the information is been passed using USER:ID
    # via users#controller
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
