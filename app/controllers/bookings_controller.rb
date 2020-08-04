class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @lookalike = Lookalike.find(params[:lookalike_id])
    @booking.lookalike = @lookalike
    if @booking.save
      redirect_to lookalike_path
    else
      render :new
    end
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
