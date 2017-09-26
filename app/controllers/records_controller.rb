class RecordsController < ActionController::API
  def show
    @record = current_user.record

    render json: @record
  end

  def update
    @record = Record.find(params[:id])

    if @record.update(record_params)
      render json: @record, status: 200
    else
      render json: { error: "Failed to update user record" }
    end
  end

  private

  def record_params
    params.require(:record).permit(:data)
  end
end
