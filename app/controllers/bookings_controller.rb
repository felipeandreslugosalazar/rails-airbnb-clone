class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def my_bookings
    # this is intended to act as a list index but it
    # will filter by @user


    # here we will have to pass the id of the
    # in the view i will iterate over @my_bookings to show the user's bookings
    
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
