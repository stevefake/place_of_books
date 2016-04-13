class ReservationsController < ApplicationController
  def index
    "hallo?!"
    @reservations = Reservation.all
  end

  def new
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(params[:reservation].permit!)
    redirect_to action: "show", id: @reservation.id
  end

  def create
    @reservation = Reservation.create(params[:reservation].permit!)
    redirect_to action: "show", id: @reservation.id
  end

  def destroy
    redirect_to_action "index"
  end
end
