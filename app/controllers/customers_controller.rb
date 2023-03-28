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
    # find customer
    @customer = Customer.find_by({id: params[:id]})

    # update customer
    @customer.update({
      name: params[:name],
      email: params[:email],
      phone: params[:phone]
    })

    # redirect to customer's show page
    redirect_to({ controller: 'customers', action: 'show',id: @customer.id })
  end

  def destroy
    # find customer
    @customer = Customer.find_by({id: params[:id]})

    # destroy customer
    @customer.destroy

    # redirect to customer's index page
    redirect_to({ controller: 'customers', action: 'index' })
  end
end
