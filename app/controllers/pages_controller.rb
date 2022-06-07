class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :ui_kit ]

  def home
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    @booking.update!(status: true)
    redirect_to dashboard_path, flash: {notice: "Accepted!"}
  end
end
