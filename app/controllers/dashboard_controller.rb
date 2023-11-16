class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: [:index, :show, :edit, :update, :destroy]

  def index
    @username = current_user&.username

    # Check if current_user is not nil before accessing notes
  end

  private
  def set_note
    @notes = current_user.notes
  end

  def note_params
    params.require(:note).permit(:note_name, :content)
  end
end
