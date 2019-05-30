class Api::V1::CollegeTracksController < ApplicationController

  def create
    @college_track = CollegeTrack.new(track_params)
    if @college_track.valid?
      @college_track.save
      render json: {track: @college_track}, status: :created
    else
      render json: {error: 'failed to create track'}, status: :not_acceptable
    end
  end

  def index
    if current_user
      render json: {tracks: current_user.college_tracks}
    else
      render json: {error: "not logged in"}, status: 422
    end
  end

  private

  def track_params
    params.require(:college_track).permit(:college_id, :major, :user_id)
  end

end
