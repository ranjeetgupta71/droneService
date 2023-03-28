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

  def create
    Customer.create({ name: params[:name],email: params[:email],phone: params[:phone] })
    redirect_to({controller: 'customers', action: 'index' })
  end

  def update

  end

  def delete

  end
end
