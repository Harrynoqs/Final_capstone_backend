class Api::V1::ReservationsController < ApplicationController

  def index
    @reservations = @current_user.reservations
    render json: @reservations
  end

  def create
    @reservation = reservation.new(reservation_params.merge(user: @current_user))

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @reservation = @current_user.reservations.find(params[:id])
    render json: @reservation
  end

  def destroy
    @reservation = @current_user.reservations.find(params[:id])
    @reservation.destroy
    render json: { message: 'reservation deleted successfully.' }
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_time, :doctor_id)
  end
end
