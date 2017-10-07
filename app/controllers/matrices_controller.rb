class MatricesController < ApplicationController
  before_action :authenticate_user!
  include MatrixDefinitions

  def new
    matrices = [
      javascript_matrix,
      ruby_matrix,
      java_matrix,
      react_matrix,
      devops_matrix
    ]

    @matrices = DbMapper.new(
      matrices: matrices,
      competency_record: current_user.competency_record
    ).matrices
  end
end

