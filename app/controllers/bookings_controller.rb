class BookingsController < ApplicationController
  # def new
  #   @booking = Booking.new
  #   authorize @booking
  #   @lookalike = Lookalike.find(params[:lookalike_id])
  #   authorize @lookalike
  # end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @lookalike = Lookalike.find(params[:lookalike_id])
    @booking.lookalike = @lookalike
    @booking.user = current_user
    if @booking.save
      redirect_to user_bookings_path(current_user)
    else
      render :new
    end
  end

  def my_bookings
    # the information is been passed using USER:ID
    # via users#controller
    @bookings = Booking.all
    authorize @bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
