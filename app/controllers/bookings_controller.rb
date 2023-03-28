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
    @booking = Booking.find_by({id: params[:id]})
  end

  def create
    @booking = Booking.create({
      location: params[:location],
      duration: params[:duration],
      price: params[:price],
      status: params[:status],
      customer_id: params[:customer_id]
    })
    redirect_to({controller: 'bookings', action: 'show', id: @booking.id })
  end

  def update
    @booking = Booking.find_by({id: params[:id]})
    @booking.update({
      location: params[:location],
      status: params[:status],
      price: params[:price],
      duration: params[:duration]
    })
    redirect_to({controller: 'bookings', action: 'show',id: @booking.id })
  end

  def destroy

  end

end
