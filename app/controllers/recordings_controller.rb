class RecordingsController < ApplicationController
  def index
    @recordings = Recording.all
    render json: @recordings, status: :ok
  end
  
  def create
    @recording = Recording.new(recording_params)

    if @recording.save
      render json: { message: 'Recording created successfully' }, status: :created
    else
      render json: { errors: @recording.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def recording_params
    params.require(:recording).permit(:content)
  end
end
