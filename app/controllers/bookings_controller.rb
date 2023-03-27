class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find_by({id: params[:id]})
  end

  def new

  end

  def edit

  end

end
