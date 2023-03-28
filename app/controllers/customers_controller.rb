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
    @customer = Customer.find_by({id: params[:id]})
  end

  def create
    Customer.create({ name: params[:name],email: params[:email],phone: params[:phone] })
    redirect_to({controller: 'customers', action: 'index' })
  end

  def update
    # update record in db
    # redirect to record's show page
    @customer = Customer.find_by({id: params[:id]})
    @customer.update({
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
    })
    redirect_to({controller: 'customers', action: 'show',id: @customer.id })
  end

  def delete

  end
end
