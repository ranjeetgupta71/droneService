class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
     @customer = Customer.find_by({id: params[:id]})
  end

  def new

  end

  def edit

  end

end
