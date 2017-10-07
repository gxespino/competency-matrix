class CompetencyRecordsController < ActionController::API
  before_action :authenticate_user!

  def update
    return if different_user?

    @competency_record = current_user.competency_record

    if current_user.update(competency_record: updated_competency_record)
      head :no_content
    else
      render json: @competency_record.errors, status: :unprocessable_entity
    end
  end

  private

  def different_user?
    found_user = User.find(record_params[:userId])
    found_user != current_user
  end

  def updated_competency_record
    new_comp = CompetencyUpdater.new(
      name: record_params[:competencyName],
      index: record_params[:competencyIndex],
      state: record_params[:competencyState]
    ).updated_comp

    @competency_record.merge(new_comp)
  end

  def record_params
    params.permit(:userId, :competencyName, :competencyIndex, :competencyState)
  end
end
