class CompetencyRecordsController < ActionController::API
  before_action :authenticate_user!

  def update
    @competency_record = current_user.competency_record

    if @competency_record.update(tracking_params)
      head :no_content
    else
      render json: @competency_record.errors, status: :unprocessable_entity
    end
  end

  private

  def record_params
    params.fetch(:record, {})
  end
end
