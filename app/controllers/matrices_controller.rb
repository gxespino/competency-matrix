class MatricesController < ApplicationController
  before_action :authenticate_user!
  include MatrixDefinitions

  def new
    @matrices = [
      javascript_matrix,
      ruby_matrix,
      java_matrix,
      css_matrix,
      react_matrix
    ]
  end
end
