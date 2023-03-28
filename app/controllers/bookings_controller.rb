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

  def create
    Booking.create({
      location: params[:location],
      duration: params[:duration],
      price: params[:price],
      status: params[:status]
    })
    redirect_to({controller: 'bookings', action: 'index' })
  end

  def update

  end

  def delete

  end

end
